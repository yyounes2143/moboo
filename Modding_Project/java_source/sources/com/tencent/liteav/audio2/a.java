package com.tencent.liteav.audio2;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AndroidInterruptedStateListener f10186a;

    private a(AndroidInterruptedStateListener androidInterruptedStateListener) {
        this.f10186a = androidInterruptedStateListener;
    }

    public static Runnable a(AndroidInterruptedStateListener androidInterruptedStateListener) {
        return new a(androidInterruptedStateListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        AndroidInterruptedStateListener.lambda$registerAudioRecordingCallback$0(this.f10186a);
    }
}
