#   Copyright 2004-2005 by Kevin Smith
#   released under the MIT-style wxruby2 license

%include "../common.i"

%module(directors="1") wxFileDialog

enum
{
    wxFD_OPEN              = 0x0001,
    wxFD_SAVE              = 0x0002,
    wxFD_OVERWRITE_PROMPT  = 0x0004,
    wxFD_FILE_MUST_EXIST   = 0x0010,
    wxFD_MULTIPLE          = 0x0020,
    wxFD_CHANGE_DIR        = 0x0080,
    wxFD_PREVIEW           = 0x0100
};

%typemap(in,numinputs=0) wxArrayString &(wxArrayString sel)
{
	$1 = &sel;
}

%typemap(argout) wxArrayString &{
  $result = rb_ary_new();
  for (int i = 0; i < $1->GetCount(); i++)
    rb_ary_push($result,rb_str_new2((*$1)[i].mb_str()));
}

%import "include/wxObject.h"
%import "include/wxEvtHandler.h"
%import "include/wxWindow.h"
%import "include/wxDialog.h"

%include "include/wxFileDialog.h"
