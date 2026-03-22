package com.tencent.liteav.audio2.route;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.media.AudioManager;
import android.os.Process;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b implements BluetoothProfile.ServiceListener {

    /* renamed from: a  reason: collision with root package name */
    final BluetoothAdapter f10198a;
    BluetoothProfile b = null;
    final Object c = new Object();
    private final Context d;
    private AudioManager e;

    public b(Context context) {
        this.d = context;
        BluetoothAdapter c = c();
        this.f10198a = c;
        if (c != null) {
            try {
                c.getProfileProxy(context, this, 1);
            } catch (Throwable th) {
                Log.w("BluetoothHeadsetListener", "Get profile proxy exception " + th.getMessage(), new Object[0]);
            }
        } else {
            Log.i("BluetoothHeadsetListener", "Bluetooth adapter is null", new Object[0]);
        }
        this.e = (AudioManager) this.d.getSystemService("audio");
    }

    private static BluetoothAdapter c() {
        try {
            return BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable th) {
            Log.w("BluetoothHeadsetListener", "Get default adapter exception " + th.getMessage(), new Object[0]);
            return null;
        }
    }

    private List<BluetoothDevice> d() {
        try {
            return this.b.getConnectedDevices();
        } catch (Throwable th) {
            Log.w("BluetoothHeadsetListener", "Get connected devices exception " + th.getMessage(), new Object[0]);
            return null;
        }
    }

    private boolean e() {
        try {
            return this.f10198a.isEnabled();
        } catch (Throwable th) {
            Log.w("BluetoothHeadsetListener", "Get bluetooth adapter status exception " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    private boolean f() {
        try {
            if (((Integer) BluetoothAdapter.class.getMethod("isLeAudioSupported", null).invoke(this.f10198a, null)).intValue() != 10) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            Log.w("BluetoothHeadsetListener", "get le audio supported failed. ".concat(String.valueOf(th)), new Object[0]);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x009e, code lost:
        if (r2.size() > 0) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio2.route.b.a():boolean");
    }

    public final void b() {
        try {
            this.f10198a.closeProfileProxy(1, this.b);
        } catch (Throwable th) {
            Log.w("BluetoothHeadsetListener", "Close profile proxy exception " + th.getMessage(), new Object[0]);
        }
    }

    @Override // android.bluetooth.BluetoothProfile.ServiceListener
    public final void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
        BluetoothProfile bluetoothProfile2;
        if (i != 1) {
            return;
        }
        synchronized (this.c) {
            try {
                if (this.f10198a != null && (bluetoothProfile2 = this.b) != null) {
                    Log.i("BluetoothHeadsetListener", "Bluetooth Headset proxy changed from %s to %s", bluetoothProfile2, bluetoothProfile);
                    b();
                }
                this.b = bluetoothProfile;
                this.c.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.bluetooth.BluetoothProfile.ServiceListener
    public final void onServiceDisconnected(int i) {
        if (i != 1) {
            return;
        }
        synchronized (this.c) {
            try {
                if (this.f10198a != null && this.b != null) {
                    b();
                    this.b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean a(Context context) {
        if (context != null && LiteavSystemInfo.getSystemOSVersionInt() >= 31) {
            try {
                return context.checkPermission("android.permission.BLUETOOTH_CONNECT", Process.myPid(), Process.myUid()) == 0;
            } catch (Throwable th) {
                Log.w("BluetoothHeadsetListener", "checkPermission exception " + th.getMessage(), new Object[0]);
            }
        }
        return true;
    }
}
