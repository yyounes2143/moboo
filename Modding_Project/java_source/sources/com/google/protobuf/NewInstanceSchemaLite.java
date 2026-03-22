package com.google.protobuf;
/* compiled from: Proguard */
@CheckReturnValue
/* loaded from: classes5.dex */
final class NewInstanceSchemaLite implements NewInstanceSchema {
    @Override // com.google.protobuf.NewInstanceSchema
    public Object newInstance(Object obj) {
        return ((GeneratedMessageLite) obj).newMutableInstance();
    }
}
