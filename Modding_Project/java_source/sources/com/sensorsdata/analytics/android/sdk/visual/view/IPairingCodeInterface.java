package com.sensorsdata.analytics.android.sdk.visual.view;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
interface IPairingCodeInterface {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnPairingCodeChangedListener {
        void onInputCompleted(CharSequence charSequence);

        void onPairingCodeChanged(CharSequence charSequence, int i, int i2, int i3);
    }

    void setBottomLineHeight(int i);

    void setBottomNormalColor(int i);

    void setBottomSelectedColor(int i);

    void setFigures(int i);

    void setOnPairingCodeChangedListener(OnPairingCodeChangedListener onPairingCodeChangedListener);

    void setPairingCodeMargin(int i);

    void setSelectedBackgroundColor(int i);
}
