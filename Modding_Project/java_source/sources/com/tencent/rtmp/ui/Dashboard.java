package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Dashboard extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f10475a;
    private final SimpleDateFormat b;
    private TextView c;
    private TextView d;
    private ScrollView e;
    private int f;
    private boolean g;

    public Dashboard(Context context) {
        this(context, null);
    }

    private void a() {
        if (this.c != null) {
            return;
        }
        this.c = new TextView(getContext());
        this.d = new TextView(getContext());
        this.e = new ScrollView(getContext());
        this.c.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.c.setTextColor(-49023);
        this.c.setTypeface(Typeface.MONOSPACE);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.e.setPadding(0, 10, 0, 0);
        this.e.setLayoutParams(layoutParams);
        this.e.setVerticalScrollBarEnabled(true);
        this.e.setScrollbarFadingEnabled(true);
        this.d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.d.setTextColor(-49023);
        this.e.addView(this.d);
        addView(this.c);
        addView(this.e);
        if (this.f10475a.length() <= 0) {
            this.f10475a.append("liteav sdk version:\n");
        }
        this.d.setText(this.f10475a.toString());
    }

    public void setEventTextSize(float f) {
        TextView textView = this.d;
        if (textView != null) {
            textView.setTextSize(f);
        }
    }

    public void setMessageMaxLength(int i) {
        this.f = i;
    }

    public void setShowLevel(int i) {
        if (i != 0) {
            if (i != 1) {
                a();
                this.c.setVisibility(0);
                this.e.setVisibility(0);
                setVisibility(0);
                return;
            }
            a();
            this.c.setVisibility(0);
            this.e.setVisibility(4);
            setVisibility(0);
            return;
        }
        TextView textView = this.c;
        if (textView != null) {
            textView.setVisibility(4);
        }
        ScrollView scrollView = this.e;
        if (scrollView != null) {
            scrollView.setVisibility(4);
        }
        setVisibility(4);
    }

    public void setStatusText(CharSequence charSequence) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setStatusTextSize(float f) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setTextSize(f);
        }
    }

    public Dashboard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10475a = new StringBuilder();
        this.b = new SimpleDateFormat("HH:mm:ss.SSS", Locale.ENGLISH);
        this.f = 3000;
        this.g = false;
        setOrientation(1);
        setVisibility(8);
    }
}
