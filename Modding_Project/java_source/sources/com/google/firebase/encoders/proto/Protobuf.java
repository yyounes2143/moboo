package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.annotations.ExtraProperty;
/* compiled from: Proguard */
@ExtraProperty
/* loaded from: classes5.dex */
public @interface Protobuf {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public enum IntEncoding {
        DEFAULT,
        SIGNED,
        FIXED
    }

    IntEncoding intEncoding() default IntEncoding.DEFAULT;

    int tag();
}
