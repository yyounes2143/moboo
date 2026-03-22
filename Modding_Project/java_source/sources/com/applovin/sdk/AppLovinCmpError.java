package com.applovin.sdk;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface AppLovinCmpError {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum Code {
        UNSPECIFIED(-1),
        INTEGRATION_ERROR(1),
        FORM_UNAVAILABLE(2),
        FORM_NOT_REQUIRED(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3876a;

        Code(int i) {
            this.f3876a = i;
        }

        public int getValue() {
            return this.f3876a;
        }
    }

    int getCmpCode();

    String getCmpMessage();

    Code getCode();

    String getMessage();
}
