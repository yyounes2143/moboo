package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeqz implements zzetv {
    private final Context zza;
    private final zzgdj zzb;

    public zzeqz(zzgdj zzgdjVar, Context context) {
        this.zzb = zzgdjVar;
        this.zza = context;
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4587)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzera zzc(com.google.android.gms.internal.ads.zzeqz r1) {
        /*
            com.google.android.gms.internal.ads.zzera r0 = new com.google.android.gms.internal.ads.zzera
            com.google.android.gms.ads.internal.zzv.zzr()
            android.content.Context r1 = r1.zza
            java.lang.Integer r1 = com.google.android.gms.ads.internal.util.zzs.zzt(r1)
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeqz.zzc(com.google.android.gms.internal.ads.zzeqz):com.google.android.gms.internal.ads.zzera");
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 57;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeqy
            /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.ads.zzeqz.zzc(com.google.android.gms.internal.ads.zzeqz):com.google.android.gms.internal.ads.zzera
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
                	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
                Caused by: java.lang.IndexOutOfBoundsException: Index: 0
                	at java.base/java.util.Collections$EmptyList.get(Collections.java:4587)
                	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:104)
                	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
                	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
                	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
                	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:65)
                	... 1 more
                */
            @Override // java.util.concurrent.Callable
            public final java.lang.Object call() {
                /*
                    r1 = this;
                    com.google.android.gms.internal.ads.zzeqz r0 = com.google.android.gms.internal.ads.zzeqz.this
                    com.google.android.gms.internal.ads.zzera r0 = com.google.android.gms.internal.ads.zzeqz.zzc(r0)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeqy.call():java.lang.Object");
            }
        });
    }
}
