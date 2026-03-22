package com.applovin.impl;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class i2 {

    /* renamed from: a  reason: collision with root package name */
    public TextView f3146a;
    public TextView b;
    public ImageView c;
    public ImageView d;
    private j2 e;
    private int f;

    public void a(int i) {
        this.f = i;
    }

    public j2 b() {
        return this.e;
    }

    public int a() {
        return this.f;
    }

    public void a(j2 j2Var) {
        this.e = j2Var;
        this.f3146a.setText(j2Var.k());
        this.f3146a.setTextColor(j2Var.l());
        if (this.b != null) {
            if (!TextUtils.isEmpty(j2Var.f())) {
                this.b.setTypeface(null, 0);
                this.b.setVisibility(0);
                this.b.setText(j2Var.f());
                this.b.setTextColor(j2Var.g());
                if (j2Var.p()) {
                    this.b.setTypeface(null, 1);
                }
            } else {
                this.b.setVisibility(8);
            }
        }
        if (this.c != null) {
            if (j2Var.h() > 0) {
                this.c.setImageResource(j2Var.h());
                this.c.setColorFilter(j2Var.i());
                this.c.setVisibility(0);
            } else {
                this.c.setVisibility(8);
            }
        }
        if (this.d != null) {
            if (j2Var.d() > 0) {
                this.d.setImageResource(j2Var.d());
                this.d.setColorFilter(j2Var.e());
                this.d.setVisibility(0);
                return;
            }
            this.d.setVisibility(8);
        }
    }
}
