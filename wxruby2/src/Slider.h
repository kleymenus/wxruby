/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.22
 * 
 * This file is not intended to be easily readable and contains a number of 
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG 
 * interface file instead. 
 * ----------------------------------------------------------------------------- */

#ifndef SWIG_WxSlider_WRAP_H_
#define SWIG_WxSlider_WRAP_H_

class Swig::Director;


class SwigDirector_wxSlider : public wxSlider, public Swig::Director {

public:
    SwigDirector_wxSlider(VALUE self, bool disown = false);
    SwigDirector_wxSlider(VALUE self, wxWindow *parent, wxWindowID id, int value, int minValue, int maxValue, wxPoint const &point = wxDefaultPosition, wxSize const &size = wxDefaultSize, long style = wxSL_HORIZONTAL, wxValidator const &validator = wxDefaultValidator, wxString const &name = "slider", bool disown = false);
};


#endif