package com.changdu.component.pay.google;

import com.android.billingclient.api.Purchase;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class C extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public Object f5344a;
    public int b;
    public final /* synthetic */ Purchase c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(Purchase purchase, Continuation continuation) {
        super(2, continuation);
        this.c = purchase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new C(this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x0222, code lost:
        if (r0 != r13) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071 A[Catch: Exception -> 0x0236, TryCatch #0 {Exception -> 0x0236, blocks: (B:6:0x0019, B:98:0x0225, B:9:0x0024, B:78:0x01d6, B:80:0x01da, B:83:0x01e1, B:85:0x01e7, B:88:0x01ee, B:90:0x01f8, B:92:0x0200, B:95:0x0207, B:99:0x0230, B:101:0x0233, B:12:0x0030, B:66:0x0174, B:67:0x0179, B:69:0x0185, B:71:0x0188, B:73:0x0198, B:75:0x019b, B:13:0x0038, B:40:0x00cf, B:42:0x00dd, B:46:0x00e5, B:16:0x0041, B:34:0x00ae, B:36:0x00b6, B:39:0x00cc, B:19:0x004b, B:31:0x0088, B:20:0x004f, B:26:0x006a, B:28:0x0071, B:47:0x010b, B:49:0x0118, B:53:0x0120, B:55:0x0152, B:57:0x0155, B:59:0x015b, B:61:0x0161, B:63:0x0167, B:23:0x0058), top: B:106:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b6 A[Catch: Exception -> 0x0236, TryCatch #0 {Exception -> 0x0236, blocks: (B:6:0x0019, B:98:0x0225, B:9:0x0024, B:78:0x01d6, B:80:0x01da, B:83:0x01e1, B:85:0x01e7, B:88:0x01ee, B:90:0x01f8, B:92:0x0200, B:95:0x0207, B:99:0x0230, B:101:0x0233, B:12:0x0030, B:66:0x0174, B:67:0x0179, B:69:0x0185, B:71:0x0188, B:73:0x0198, B:75:0x019b, B:13:0x0038, B:40:0x00cf, B:42:0x00dd, B:46:0x00e5, B:16:0x0041, B:34:0x00ae, B:36:0x00b6, B:39:0x00cc, B:19:0x004b, B:31:0x0088, B:20:0x004f, B:26:0x006a, B:28:0x0071, B:47:0x010b, B:49:0x0118, B:53:0x0120, B:55:0x0152, B:57:0x0155, B:59:0x015b, B:61:0x0161, B:63:0x0167, B:23:0x0058), top: B:106:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cc A[Catch: Exception -> 0x0236, TryCatch #0 {Exception -> 0x0236, blocks: (B:6:0x0019, B:98:0x0225, B:9:0x0024, B:78:0x01d6, B:80:0x01da, B:83:0x01e1, B:85:0x01e7, B:88:0x01ee, B:90:0x01f8, B:92:0x0200, B:95:0x0207, B:99:0x0230, B:101:0x0233, B:12:0x0030, B:66:0x0174, B:67:0x0179, B:69:0x0185, B:71:0x0188, B:73:0x0198, B:75:0x019b, B:13:0x0038, B:40:0x00cf, B:42:0x00dd, B:46:0x00e5, B:16:0x0041, B:34:0x00ae, B:36:0x00b6, B:39:0x00cc, B:19:0x004b, B:31:0x0088, B:20:0x004f, B:26:0x006a, B:28:0x0071, B:47:0x010b, B:49:0x0118, B:53:0x0120, B:55:0x0152, B:57:0x0155, B:59:0x015b, B:61:0x0161, B:63:0x0167, B:23:0x0058), top: B:106:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00dd A[Catch: Exception -> 0x0236, TryCatch #0 {Exception -> 0x0236, blocks: (B:6:0x0019, B:98:0x0225, B:9:0x0024, B:78:0x01d6, B:80:0x01da, B:83:0x01e1, B:85:0x01e7, B:88:0x01ee, B:90:0x01f8, B:92:0x0200, B:95:0x0207, B:99:0x0230, B:101:0x0233, B:12:0x0030, B:66:0x0174, B:67:0x0179, B:69:0x0185, B:71:0x0188, B:73:0x0198, B:75:0x019b, B:13:0x0038, B:40:0x00cf, B:42:0x00dd, B:46:0x00e5, B:16:0x0041, B:34:0x00ae, B:36:0x00b6, B:39:0x00cc, B:19:0x004b, B:31:0x0088, B:20:0x004f, B:26:0x006a, B:28:0x0071, B:47:0x010b, B:49:0x0118, B:53:0x0120, B:55:0x0152, B:57:0x0155, B:59:0x015b, B:61:0x0161, B:63:0x0167, B:23:0x0058), top: B:106:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010b A[Catch: Exception -> 0x0236, TryCatch #0 {Exception -> 0x0236, blocks: (B:6:0x0019, B:98:0x0225, B:9:0x0024, B:78:0x01d6, B:80:0x01da, B:83:0x01e1, B:85:0x01e7, B:88:0x01ee, B:90:0x01f8, B:92:0x0200, B:95:0x0207, B:99:0x0230, B:101:0x0233, B:12:0x0030, B:66:0x0174, B:67:0x0179, B:69:0x0185, B:71:0x0188, B:73:0x0198, B:75:0x019b, B:13:0x0038, B:40:0x00cf, B:42:0x00dd, B:46:0x00e5, B:16:0x0041, B:34:0x00ae, B:36:0x00b6, B:39:0x00cc, B:19:0x004b, B:31:0x0088, B:20:0x004f, B:26:0x006a, B:28:0x0071, B:47:0x010b, B:49:0x0118, B:53:0x0120, B:55:0x0152, B:57:0x0155, B:59:0x015b, B:61:0x0161, B:63:0x0167, B:23:0x0058), top: B:106:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0185 A[Catch: Exception -> 0x0236, TryCatch #0 {Exception -> 0x0236, blocks: (B:6:0x0019, B:98:0x0225, B:9:0x0024, B:78:0x01d6, B:80:0x01da, B:83:0x01e1, B:85:0x01e7, B:88:0x01ee, B:90:0x01f8, B:92:0x0200, B:95:0x0207, B:99:0x0230, B:101:0x0233, B:12:0x0030, B:66:0x0174, B:67:0x0179, B:69:0x0185, B:71:0x0188, B:73:0x0198, B:75:0x019b, B:13:0x0038, B:40:0x00cf, B:42:0x00dd, B:46:0x00e5, B:16:0x0041, B:34:0x00ae, B:36:0x00b6, B:39:0x00cc, B:19:0x004b, B:31:0x0088, B:20:0x004f, B:26:0x006a, B:28:0x0071, B:47:0x010b, B:49:0x0118, B:53:0x0120, B:55:0x0152, B:57:0x0155, B:59:0x015b, B:61:0x0161, B:63:0x0167, B:23:0x0058), top: B:106:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0188 A[Catch: Exception -> 0x0236, TryCatch #0 {Exception -> 0x0236, blocks: (B:6:0x0019, B:98:0x0225, B:9:0x0024, B:78:0x01d6, B:80:0x01da, B:83:0x01e1, B:85:0x01e7, B:88:0x01ee, B:90:0x01f8, B:92:0x0200, B:95:0x0207, B:99:0x0230, B:101:0x0233, B:12:0x0030, B:66:0x0174, B:67:0x0179, B:69:0x0185, B:71:0x0188, B:73:0x0198, B:75:0x019b, B:13:0x0038, B:40:0x00cf, B:42:0x00dd, B:46:0x00e5, B:16:0x0041, B:34:0x00ae, B:36:0x00b6, B:39:0x00cc, B:19:0x004b, B:31:0x0088, B:20:0x004f, B:26:0x006a, B:28:0x0071, B:47:0x010b, B:49:0x0118, B:53:0x0120, B:55:0x0152, B:57:0x0155, B:59:0x015b, B:61:0x0161, B:63:0x0167, B:23:0x0058), top: B:106:0x000e }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.C.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
