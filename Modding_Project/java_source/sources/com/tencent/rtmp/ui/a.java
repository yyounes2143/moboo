package com.tencent.rtmp.ui;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXCloudVideoView f10480a;

    private a(TXCloudVideoView tXCloudVideoView) {
        this.f10480a = tXCloudVideoView;
    }

    public static Runnable a(TXCloudVideoView tXCloudVideoView) {
        return new a(tXCloudVideoView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10480a.hideIndicatorView();
    }
}
