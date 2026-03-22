package com.changdu.component.httpbiz;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class h extends ProxySelector {
    @Override // java.net.ProxySelector
    public final List select(URI uri) {
        return Collections.singletonList(Proxy.NO_PROXY);
    }

    @Override // java.net.ProxySelector
    public final void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }
}
