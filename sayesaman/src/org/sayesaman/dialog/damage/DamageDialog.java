package org.sayesaman.dialog.damage;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;

import org.sayesaman.R;
import org.sayesaman.dialog.CustomDialog;
import org.sayesaman.dialog.Statics;

public class DamageDialog extends CustomDialog implements View.OnClickListener {
    ;
    org.sayesaman.database.model.DamageHdr damageHdr;

    public DamageDialog(Context context, org.sayesaman.database.model.DamageHdr damageHdr) {
        super(context);
        this.damageHdr = damageHdr;
        dojobs();
    }

    private void dojobs() {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        getWindow().setBackgroundDrawable(new ColorDrawable(android.graphics.Color.TRANSPARENT));
        setContentView(R.layout.dialog_order);

        ((ViewGroup) findViewById(R.id.dialog_order_list)).addView(new DamageHdrView(getContext(), damageHdr));
        ((TextView) findViewById(R.id.dialog_order_title)).setText(damageHdr.getCustomer().getCode() + " : " + damageHdr.getCustomer().getName());
        ((TextView) findViewById(R.id.dialog_order_price)).setText(Statics.commas.insertCommas(damageHdr.getCustomer().getDamageStatus().getDamage_price()));
        ((TextView) findViewById(R.id.dialog_order_buy_type)).setText(damageHdr.getCustomer().getBuyTypeName());

        findViewById(R.id.dialog_order_close).setOnClickListener(this);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.dialog_order_close:
                dismiss();
                break;

            default:
                break;
        }
    }
}
