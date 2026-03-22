package com.facebook.appevents;

import android.content.Context;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AccessTokenAppIdPair;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.Utility;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0001¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u000e\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/facebook/appevents/AppEventDiskStore;", "", "<init>", "()V", "Lcom/facebook/appevents/PersistedEvents;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/PersistedEvents;", "eventsToPersist", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/PersistedEvents;)V", "", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "MovedClassObjectInputStream", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventDiskStore {
    @NotNull
    public static final AppEventDiskStore INSTANCE = new AppEventDiskStore();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6178Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AppEventDiskStore.class.getName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0014¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;", "Ljava/io/ObjectInputStream;", "inputStream", "Ljava/io/InputStream;", "(Ljava/io/InputStream;)V", "readClassDescriptor", "Ljava/io/ObjectStreamClass;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class MovedClassObjectInputStream extends ObjectInputStream {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;", "", "()V", "ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME", "", "APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public MovedClassObjectInputStream(@Nullable InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        @NotNull
        public ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (Intrinsics.areEqual(readClassDescriptor.getName(), "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
                return ObjectStreamClass.lookup(AccessTokenAppIdPair.SerializationProxyV1.class);
            }
            if (Intrinsics.areEqual(readClassDescriptor.getName(), "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV2")) {
                return ObjectStreamClass.lookup(AppEvent.SerializationProxyV2.class);
            }
            return readClassDescriptor;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable PersistedEvents persistedEvents) {
        Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        ObjectOutputStream objectOutputStream = null;
        try {
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new BufferedOutputStream(Wwwwwwwwwwwwwwwwwwwwwww2.openFileOutput("AppEventsLogger.persistedevents", 0)));
            try {
                objectOutputStream2.writeObject(persistedEvents);
                Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(objectOutputStream2);
            } catch (Throwable unused) {
                objectOutputStream = objectOutputStream2;
                try {
                    Wwwwwwwwwwwwwwwwwwwwwww2.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                } catch (Exception unused2) {
                    Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(objectOutputStream);
                } catch (Throwable th) {
                    Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(objectOutputStream);
                    throw th;
                }
            }
        } catch (Throwable unused3) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x006c A[Catch: all -> 0x0030, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x0023, B:11:0x0026, B:35:0x006c, B:24:0x0046, B:25:0x0049, B:26:0x0052, B:27:0x0053, B:28:0x0056, B:29:0x005c, B:31:0x0060, B:32:0x0063), top: B:45:0x0003 }] */
    @kotlin.jvm.JvmStatic
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final synchronized com.facebook.appevents.PersistedEvents Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        /*
            java.lang.Class<com.facebook.appevents.AppEventDiskStore> r0 = com.facebook.appevents.AppEventDiskStore.class
            monitor-enter(r0)
            com.facebook.appevents.internal.AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
            android.content.Context r1 = com.facebook.FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L30
            r2 = 0
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.FileInputStream r3 = r1.openFileInput(r3)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L42 java.io.FileNotFoundException -> L44
            com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream r4 = new com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L42 java.io.FileNotFoundException -> L44
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L42 java.io.FileNotFoundException -> L44
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L42 java.io.FileNotFoundException -> L44
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L42 java.io.FileNotFoundException -> L44
            java.lang.Object r3 = r4.readObject()     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L53 java.io.FileNotFoundException -> L60
            if (r3 == 0) goto L36
            com.facebook.appevents.PersistedEvents r3 = (com.facebook.appevents.PersistedEvents) r3     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L53 java.io.FileNotFoundException -> L60
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.String r2 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r2)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            r1.delete()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L32
            goto L32
        L30:
            r1 = move-exception
            goto L73
        L32:
            r2 = r3
            goto L6a
        L34:
            r2 = move-exception
            goto L46
        L36:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L53 java.io.FileNotFoundException -> L60
            java.lang.String r5 = "null cannot be cast to non-null type com.facebook.appevents.PersistedEvents"
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L53 java.io.FileNotFoundException -> L60
            throw r3     // Catch: java.lang.Throwable -> L34 java.lang.Exception -> L53 java.io.FileNotFoundException -> L60
        L3e:
            r3 = move-exception
            r4 = r2
            r2 = r3
            goto L46
        L42:
            r4 = r2
            goto L53
        L44:
            r4 = r2
            goto L60
        L46:
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L52
            r1.delete()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L52
        L52:
            throw r2     // Catch: java.lang.Throwable -> L30
        L53:
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L6a
        L5c:
            r1.delete()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L6a
            goto L6a
        L60:
            com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.String r3 = "AppEventsLogger.persistedevents"
            java.io.File r1 = r1.getFileStreamPath(r3)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L6a
            goto L5c
        L6a:
            if (r2 != 0) goto L71
            com.facebook.appevents.PersistedEvents r2 = new com.facebook.appevents.PersistedEvents     // Catch: java.lang.Throwable -> L30
            r2.<init>()     // Catch: java.lang.Throwable -> L30
        L71:
            monitor-exit(r0)
            return r2
        L73:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.AppEventDiskStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww():com.facebook.appevents.PersistedEvents");
    }
}
