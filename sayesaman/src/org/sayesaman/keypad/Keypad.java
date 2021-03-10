package org.sayesaman.keypad;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.NoTitle;
import com.googlecode.androidannotations.annotations.ViewById;

import org.sayesaman.R;

@EActivity(R.layout.keypad)
@NoTitle
public class Keypad extends Activity implements View.OnClickListener {
    @ViewById
    Button keypad_one;
    @ViewById
    Button keypad_two;
    @ViewById
    Button keypad_three;
    @ViewById
    Button keypad_four;
    @ViewById
    Button keypad_five;
    @ViewById
    Button keypad_six;
    @ViewById
    Button keypad_seven;
    @ViewById
    Button keypad_eight;
    @ViewById
    Button keypad_nine;
    @ViewById
    Button keypad_zero;
    @ViewById
    Button keypad_cancel;
    @ViewById
    Button keypad_backspace;
    @ViewById
    Button keypad_equal;
    @ViewById
    EditText keypad_disp;

    int op1 = 5;
    int op2;

    String numQty;
    String viewIndex;
    String oprType;

    @AfterViews
    protected void after() {
        Intent i = getIntent();
        numQty = i.getStringExtra("numQty").replace(",", "");
        viewIndex = i.getStringExtra("viewIndex");
        oprType = i.getStringExtra("oprType");

        if (!numQty.equals("0"))
            keypad_disp.setText(numQty);
        else
            keypad_disp.setText("0");

        try {
            keypad_one.setOnClickListener(this);
            keypad_two.setOnClickListener(this);
            keypad_three.setOnClickListener(this);
            keypad_four.setOnClickListener(this);
            keypad_five.setOnClickListener(this);
            keypad_six.setOnClickListener(this);
            keypad_seven.setOnClickListener(this);
            keypad_eight.setOnClickListener(this);
            keypad_nine.setOnClickListener(this);
            keypad_zero.setOnClickListener(this);
            keypad_cancel.setOnClickListener(this);
            keypad_equal.setOnClickListener(this);
            keypad_backspace.setOnClickListener(this);
        } catch (Exception e) {
        }
    }

    @Override
    public void onClick(View view) {
        String currentInput = keypad_disp.getText().toString();
        int currentInputLen = currentInput.length();
        String str = String.valueOf(keypad_disp.getText());

        switch (view.getId()) {
            case R.id.keypad_one:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }

                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "1";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_two:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "2";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_three:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "3";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_four:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "4";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_five:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "5";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_six:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "6";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_seven:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "7";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_eight:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "8";
                keypad_disp.setText(str);
                break;
            case R.id.keypad_nine:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "9";
                keypad_disp.setText(str);

                break;
            case R.id.keypad_zero:
                if (op2 != 0) {
                    op2 = 0;
                    keypad_disp.setText("");
                }
                if (str.substring(0, 1).equals("0")) {
                    str = "";
                }
                str = str + "0";
                keypad_disp.setText(str);

                break;
            case R.id.keypad_backspace: // Handle backspace
                int endIndex = currentInputLen - 1;

                if (endIndex < 1) {
                    keypad_disp.setText("0");
                } else {
                    keypad_disp.setText(currentInput.subSequence(0, endIndex));
                }
                break;
            case R.id.keypad_cancel: {
                finish();
                break;
            }

            case R.id.keypad_equal: {
                String numQty = keypad_disp.getText().toString().replace(",", "");

                Intent returnIntent = new Intent();
                returnIntent.putExtra("numQty", numQty);
                returnIntent.putExtra("viewIndex", viewIndex);
                returnIntent.putExtra("oprType", oprType);
                setResult(RESULT_OK, returnIntent);
                finish();

                break;
            }

        }
    }
}