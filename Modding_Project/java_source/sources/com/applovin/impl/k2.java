package com.applovin.impl;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class k2 extends BaseAdapter implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    protected Context f3169a;
    private List b = new ArrayList();
    private Map c = new HashMap();
    private a d;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(d2 d2Var, j2 j2Var);
    }

    public k2(Context context) {
        this.f3169a = context.getApplicationContext();
    }

    public j2 a() {
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    public abstract int b();

    @Override // android.widget.Adapter
    /* renamed from: b */
    public j2 getItem(int i) {
        return (j2) this.b.get(i);
    }

    public abstract List c(int i);

    public void c() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Kk
            @Override // java.lang.Runnable
            public final void run() {
                k2.this.notifyDataSetChanged();
            }
        });
    }

    public abstract int d(int i);

    public abstract j2 e(int i);

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).m();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        i2 i2Var;
        j2 item = getItem(i);
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(item.j(), viewGroup, false);
            i2Var = new i2();
            i2Var.f3146a = (TextView) view.findViewById(16908308);
            i2Var.b = (TextView) view.findViewById(16908309);
            i2Var.c = (ImageView) view.findViewById(R.id.imageView);
            i2Var.d = (ImageView) view.findViewById(R.id.detailImageView);
            view.setTag(i2Var);
            view.setOnClickListener(this);
            view.setBackground(a(view));
        } else {
            i2Var = (i2) view.getTag();
        }
        i2Var.a(i);
        i2Var.a(item);
        view.setEnabled(item.o());
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return j2.n();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItem(i).o();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        int i;
        this.b = new ArrayList();
        int b = b();
        this.c = new HashMap(b);
        j2 a2 = a();
        if (a2 != null) {
            this.b.add(a2);
            i = 1;
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < b; i2++) {
            int d = d(i2);
            if (d != 0) {
                this.b.add(e(i2));
                this.b.addAll(c(i2));
                this.c.put(Integer.valueOf(i2), Integer.valueOf(i));
                i += d + 1;
            }
        }
        this.b.add(new j4(""));
        super.notifyDataSetChanged();
    }

    @Override // android.view.View.OnClickListener
    @SensorsDataInstrumented
    public void onClick(View view) {
        i2 i2Var = (i2) view.getTag();
        j2 b = i2Var.b();
        d2 a2 = a(i2Var.a());
        a aVar = this.d;
        if (aVar != null && a2 != null) {
            aVar.a(a2, b);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    private d2 a(int i) {
        for (int i2 = 0; i2 < b(); i2++) {
            Integer num = (Integer) this.c.get(Integer.valueOf(i2));
            if (num != null) {
                if (i <= num.intValue() + d(i2)) {
                    return new d2(i2, i - (num.intValue() + 1));
                }
            }
        }
        return null;
    }

    private Drawable a(View view) {
        Drawable background = view.getBackground();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i0.a(R.color.applovin_sdk_highlightListItemColor, this.f3169a));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable);
        stateListDrawable.addState(new int[0], background);
        return stateListDrawable;
    }
}
