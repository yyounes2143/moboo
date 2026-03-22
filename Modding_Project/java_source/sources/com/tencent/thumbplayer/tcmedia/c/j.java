package com.tencent.thumbplayer.tcmedia.c;

import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDownloadProxy;
/* loaded from: classes6.dex */
public class j implements b {

    /* renamed from: a  reason: collision with root package name */
    private ITPDownloadProxy f10580a;

    public j(ITPDownloadProxy iTPDownloadProxy) {
        this.f10580a = iTPDownloadProxy;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.b
    public ITPDownloadProxy a() {
        return this.f10580a;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.b
    public void a(int i) {
        this.f10580a.pushEvent(i);
    }
}
