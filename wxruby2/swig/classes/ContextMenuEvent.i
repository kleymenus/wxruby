// Copyright 2004-2007 by Kevin Smith
// released under the MIT-like wxRuby license

%include "../common.i"

%module(directors="1") wxContextMenuEvent
GC_MANAGE_AS_EVENT(wxContextMenuEvent);

%import "include/wxObject.h"
%import "include/wxEvent.h"
%import "include/wxCommandEvent.h"

%include "include/wxContextMenuEvent.h"
