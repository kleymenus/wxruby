#   Copyright 2004-2007 by Kevin Smith
#   released under the MIT-style wxruby2 license

%include "../common.i"

%module(directors="1") wxAuiDockArt

%{
#include <wx/aui/aui.h>
%}

%include "include/wxAuiDockArt.h"