/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.25
 * 
 * This file is not intended to be easily readable and contains a number of 
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG 
 * interface file instead. 
 * ----------------------------------------------------------------------------- */

#ifndef SWIG_WxListCtrl_WRAP_H_
#define SWIG_WxListCtrl_WRAP_H_

class Swig::Director;


class SwigDirector_wxListCtrl : public wxListCtrl, public Swig::Director {

public:
    SwigDirector_wxListCtrl(VALUE self);
    SwigDirector_wxListCtrl(VALUE self, wxWindow *parent, wxWindowID id, wxPoint const &pos = wxDefaultPosition, wxSize const &size = wxDefaultSize, long style = wxLC_ICON, wxValidator const &validator = wxDefaultValidator, wxString const &name = wxT("listCtrl"));
    virtual ~SwigDirector_wxListCtrl();
};


#endif
