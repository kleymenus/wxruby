// Copyright 2004-2007 by Kevin Smith
// released under the MIT-like wxRuby license

%include "../common.i"

%module(directors="1") wxArtProvider
GC_MANAGE_AS_OBJECT(wxArtProvider);

%rename(ArtProvider) wxRubyArtProvider;

%header %{
#include <wx/artprov.h>
%}

// ArtId and ArtClient are basically just strings ...
typedef wxString wxArtID;
typedef wxString wxArtClient;
// ... but because they are used only in static methods, which have one
// fewer argument (no "self") than instance methods, we need to do
// deletion differently from the standard technique in typemap.i
%typemap(freearg) wxString& "if ( argc > $argnum - 1 ) delete $1;";

%{

extern swig_class cWxSize;
extern swig_class cWxObject;

class wxRubyArtProvider : public wxArtProvider
{
  public:
  VALUE self;

  wxBitmap CreateBitmap(const wxArtID& id, const wxArtClient& client, const wxSize& size)
  {
    VALUE v_id,v_client,v_size,v_ret;
    wxBitmap result;

    v_id = rb_str_new2((const char *)id.c_str());
    v_client = rb_str_new2((const char *)client.c_str());
    v_size = SWIG_NewClassInstance(cWxSize.klass,SWIGTYPE_p_wxSize);
    wxSize *size_ptr = new wxSize(size);
    DATA_PTR(v_size) = size_ptr;

    v_ret = rb_funcall(self,rb_intern("create_bitmap"),3,v_id,v_client,v_size);
    
    if (v_ret != Qnil) 
      result = *((wxBitmap *)DATA_PTR(v_ret));
    else
      return wxNullBitmap;
    return result;
  }

  static wxBitmap GetBitmap(const wxArtID& id,
                            const wxArtClient& client,
                            const wxSize& size)
  {
    return wxArtProvider::GetBitmap(id, client, size);
  }

  static wxIcon GetIcon(const wxArtID& id,
                                           const wxArtClient& client,
                                           const wxSize& size)
  {
    return wxArtProvider::GetIcon(id, client, size);
  }
};


%}

%ignore wxArtProvider;

%import "include/wxObject.h"
%include "include/wxArtProvider.h"

class wxRubyArtProvider : public wxArtProvider
{
public:
  wxBitmap CreateBitmap(const wxArtID& id, 
						const wxArtClient& client, 
						const wxSize& size);
  static wxBitmap GetBitmap(const wxArtID& id, 
							const wxArtClient&  client = wxART_OTHER, 
							const wxSize&  size = wxDefaultSize);
  static wxIcon GetIcon(const wxArtID&  id, 
						const wxArtClient& client = wxART_OTHER, 
						const wxSize&  size = wxDefaultSize);
  static void Insert(wxArtProvider*  provider);
  static bool Pop() ;
  static void Push(wxArtProvider*  provider);
  static bool Remove(wxArtProvider*  provider);
};
