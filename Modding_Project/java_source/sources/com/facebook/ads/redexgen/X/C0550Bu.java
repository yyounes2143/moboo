package com.facebook.ads.redexgen.X;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.Bu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0550Bu extends ConnectivityManager.NetworkCallback {
    public boolean A00;
    public boolean A01;
    public final /* synthetic */ C0551Bv A02;

    public C0550Bu(C0551Bv c0551Bv) {
        this.A02 = c0551Bv;
    }

    private void A00() {
        Handler handler;
        handler = this.A02.A04;
        handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Bs
            @Override // java.lang.Runnable
            public final void run() {
                C0550Bu.this.A02();
            }
        });
    }

    private void A01() {
        Handler handler;
        handler = this.A02.A04;
        handler.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Bt
            @Override // java.lang.Runnable
            public final void run() {
                C0550Bu.this.A03();
            }
        });
    }

    public final /* synthetic */ void A02() {
        C0550Bu c0550Bu;
        c0550Bu = this.A02.A02;
        if (c0550Bu == null) {
            return;
        }
        this.A02.A03();
    }

    public final /* synthetic */ void A03() {
        C0550Bu c0550Bu;
        c0550Bu = this.A02.A02;
        if (c0550Bu == null) {
            return;
        }
        this.A02.A04();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        A00();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onBlockedStatusChanged(Network network, boolean z) {
        if (!z) {
            A01();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        boolean hasCapability = networkCapabilities.hasCapability(16);
        boolean networkValidated = this.A01;
        if (networkValidated) {
            boolean networkValidated2 = this.A00;
            if (networkValidated2 == hasCapability) {
                if (!hasCapability) {
                    return;
                }
                A01();
                return;
            }
        }
        this.A01 = true;
        this.A00 = hasCapability;
        A00();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        A00();
    }
}
