package org.sayesaman.customeviews;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

import org.sayesaman.dialog.Statics;

/**
 * Created by ameysami on 9/16/13.
 */
public class CustomTextView extends TextView {
    public CustomTextView(Context context) {
        super(context);
    }

    public CustomTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs);
    }

    public CustomTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(attrs);
    }

    private void init(AttributeSet attrs) {
        String font = "";
        for (int i = 0; i < attrs.getAttributeCount(); i++) {
            if (attrs.getAttributeName(i).compareToIgnoreCase("font") == 0) {
                font = attrs.getAttributeValue(i);
                break;
            }
        }

        if (font != null)
            if (font.equals("Yekan"))
                this.setTypeface(Statics.getFontTypeFace_Yekan());
            else if (font.equals("Titr"))
                this.setTypeface(Statics.getFontTypeFace_Titr());
            else
                this.setTypeface(Statics.getFontTypeFace_Yekan());
        else
            this.setTypeface(Statics.getFontTypeFace_Yekan());
    }
}
