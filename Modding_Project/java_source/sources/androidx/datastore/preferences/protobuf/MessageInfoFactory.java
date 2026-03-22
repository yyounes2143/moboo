package androidx.datastore.preferences.protobuf;
/* compiled from: Proguard */
@CheckReturnValue
/* loaded from: classes.dex */
interface MessageInfoFactory {
    boolean isSupported(Class<?> cls);

    MessageInfo messageInfoFor(Class<?> cls);
}
