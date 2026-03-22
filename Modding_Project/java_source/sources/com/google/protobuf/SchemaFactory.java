package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@CheckReturnValue
/* loaded from: classes5.dex */
public interface SchemaFactory {
    <T> Schema<T> createSchema(Class<T> cls);
}
