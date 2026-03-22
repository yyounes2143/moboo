package com.appsflyer.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.annotation.RequiresApi;
import com.appsflyer.AFLogger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@RequiresApi(31)
@SourceDebugExtension({"SMAP\nNetworkDataCollectorApi31.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkDataCollectorApi31.kt\ncom/appsflyer/internal/network/NetworkDataCollectorApi31\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
/* loaded from: classes3.dex */
public final class AFi1mSDK extends AFi1qSDK {
    @NotNull
    private String getMediationNetwork;
    @Nullable
    private Network getRevenue;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AFa1vSDK extends ConnectivityManager.NetworkCallback {
        public AFa1vSDK() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onAvailable(@NotNull Network network) {
            AFi1mSDK.this.getRevenue = network;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(@NotNull Network network) {
            AFi1mSDK.this.getRevenue = network;
            AFi1mSDK.this.getMediationNetwork = "NetworkLost";
        }
    }

    public AFi1mSDK(@NotNull Context context) {
        super(context);
        this.getMediationNetwork = "unknown";
        AFa1vSDK aFa1vSDK = new AFa1vSDK();
        try {
            ConnectivityManager connectivityManager = this.getCurrencyIso4217Code;
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), aFa1vSDK);
            }
        } catch (Throwable th) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.DEVICE_DATA, "Error at attempt to register network callback with ConnectivityManager", th, true, false, false, false, 96, null);
        }
    }

    private static boolean y_(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null || !networkCapabilities.hasTransport(4) || networkCapabilities.hasCapability(15)) {
            return false;
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFi1qSDK
    @NotNull
    public final String AFAdRevenueData() {
        NetworkCapabilities networkCapabilities;
        Network network = this.getRevenue;
        if (network != null) {
            ConnectivityManager connectivityManager = this.getCurrencyIso4217Code;
            if (connectivityManager != null) {
                networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            } else {
                networkCapabilities = null;
            }
            if (networkCapabilities != null) {
                if (networkCapabilities.hasTransport(1)) {
                    return "WIFI";
                }
                if (networkCapabilities.hasTransport(0)) {
                    return "MOBILE";
                }
            }
        }
        return "unknown";
    }

    @Override // com.appsflyer.internal.AFi1qSDK
    public final boolean getMediationNetwork() {
        Network network = this.getRevenue;
        if (network != null) {
            if (Intrinsics.areEqual(this.getMediationNetwork, "NetworkLost")) {
                network = null;
            }
            if (network != null) {
                ConnectivityManager connectivityManager = this.getCurrencyIso4217Code;
                NetworkCapabilities networkCapabilities = connectivityManager != null ? connectivityManager.getNetworkCapabilities(network) : null;
                if (networkCapabilities != null) {
                    return y_(networkCapabilities);
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
