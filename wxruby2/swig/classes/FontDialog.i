#   Copyright 2004 by Kevin Smith
#   released under the wxWidgets license
#   as part of the wxRuby project
%include "../common.i"

%module(directors="1") wxFontDialog
%{
#include <wx/wx.h>
#include <wx/fontdlg.h>
%}


%feature("nodirector") wxFontDialog;

%ignore wxFontDialog::wxFontDialog(wxWindow *);
%typemap(default) wxFontData & {
	$1 = new wxFontData();
}

#
# Workaround for SWIG 1.3.22
#
%ignore wxFontDialog::Create();
%ignore wxFontDialog::wxFontDialog();

%include "include/wxFontDialog.h"