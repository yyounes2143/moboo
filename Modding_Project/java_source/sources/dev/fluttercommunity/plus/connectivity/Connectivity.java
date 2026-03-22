package dev.fluttercommunity.plus.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Connectivity {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConnectivityManager f11122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Connectivity(ConnectivityManager connectivityManager) {
        this.f11122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectivityManager;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        NetworkInfo activeNetworkInfo = this.f11122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "none";
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type != 1) {
                if (type != 4 && type != 5) {
                    if (type != 6) {
                        if (type != 7) {
                            if (type != 9) {
                                if (type != 17) {
                                    return "none";
                                }
                                return "vpn";
                            }
                            return "ethernet";
                        }
                        return "bluetooth";
                    }
                    return "wifi";
                }
                return "mobile";
            }
            return "wifi";
        }
        return "mobile";
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        NetworkCapabilities networkCapabilities = this.f11122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getNetworkCapabilities(this.f11122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getActiveNetwork());
        if (networkCapabilities == null) {
            return "none";
        }
        if (networkCapabilities.hasTransport(1)) {
            return "wifi";
        }
        if (networkCapabilities.hasTransport(3)) {
            return "ethernet";
        }
        if (networkCapabilities.hasTransport(4)) {
            return "vpn";
        }
        if (networkCapabilities.hasTransport(0)) {
            return "mobile";
        }
        if (networkCapabilities.hasTransport(2)) {
            return "bluetooth";
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public ConnectivityManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f11122Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
