package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.applovin.impl.k0;
import com.applovin.impl.l4;
import com.applovin.sdk.AppLovinSdkUtils;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinTouchToClickListener implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private final long f3026a;
    private final int b;
    private final int c;
    private final ClickRecognitionState d;
    private long e;
    private PointF f;
    private boolean g;
    private final Context h;
    private final OnClickListener i;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum ClickRecognitionState {
        DISABLED,
        ACTION_DOWN,
        ACTION_POINTER_UP,
        ACTION_UP
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface OnClickListener {
        void onClick(View view, MotionEvent motionEvent);
    }

    public AppLovinTouchToClickListener(com.applovin.impl.sdk.k kVar, l4 l4Var, Context context, OnClickListener onClickListener) {
        this.f3026a = ((Long) kVar.a(l4.g0)).longValue();
        this.b = ((Integer) kVar.a(l4.h0)).intValue();
        this.c = AppLovinSdkUtils.dpToPx(context, ((Integer) kVar.a(l4.l0)).intValue());
        this.d = ClickRecognitionState.values()[((Integer) kVar.a(l4Var)).intValue()];
        this.h = context;
        this.i = onClickListener;
    }

    private void a(View view, MotionEvent motionEvent) {
        this.i.onClick(view, motionEvent);
        this.g = true;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 6 && !this.g && this.d == ClickRecognitionState.ACTION_POINTER_UP) {
                    a(view, motionEvent);
                }
            } else if (!this.g && this.d == ClickRecognitionState.ACTION_UP) {
                a(view, motionEvent);
            } else if (this.d == ClickRecognitionState.DISABLED) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.e;
                float a2 = a(this.f, new PointF(motionEvent.getX(), motionEvent.getY()));
                if (!this.g) {
                    long j = this.f3026a;
                    if ((j < 0 || elapsedRealtime < j) && ((i = this.b) < 0 || a2 < i)) {
                        a(view, motionEvent);
                    }
                }
            }
        } else if (this.d == ClickRecognitionState.ACTION_DOWN) {
            if (a(motionEvent)) {
                a(view, motionEvent);
            }
        } else {
            this.e = SystemClock.elapsedRealtime();
            this.f = new PointF(motionEvent.getX(), motionEvent.getY());
            this.g = false;
        }
        return true;
    }

    private float a(PointF pointF, PointF pointF2) {
        float f = pointF.x - pointF2.x;
        float f2 = pointF.y - pointF2.y;
        return a((float) Math.sqrt((f * f) + (f2 * f2)));
    }

    private float a(float f) {
        return f / this.h.getResources().getDisplayMetrics().density;
    }

    private boolean a(MotionEvent motionEvent) {
        if (this.c <= 0) {
            return true;
        }
        Point b = k0.b(this.h);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i = this.c;
        float f = i;
        return rawX >= f && rawY >= f && rawX <= ((float) (b.x - i)) && rawY <= ((float) (b.y - i));
    }
}
