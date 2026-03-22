package com.tencent.thumbplayer.tcmedia.api.proxy;
/* loaded from: classes6.dex */
public interface ITPPlayerProxy {
    void pushEvent(int i);

    void setIsActive(boolean z);

    void setProxyServiceType(int i);

    void setTPPlayerProxyListener(ITPPlayerProxyListener iTPPlayerProxyListener);
}
