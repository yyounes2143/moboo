package com.google.protobuf;
/* compiled from: Proguard */
@CheckReturnValue
/* loaded from: classes5.dex */
interface MessageInfoFactory {
    boolean isSupported(Class<?> cls);

    MessageInfo messageInfoFor(Class<?> cls);
}
