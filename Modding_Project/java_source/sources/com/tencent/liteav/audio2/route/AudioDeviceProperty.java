package com.tencent.liteav.audio2.route;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import com.tencent.liteav.audio2.route.a;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
/* compiled from: Proguard */
@JNINamespace("liteav::audio")
/* loaded from: classes6.dex */
public class AudioDeviceProperty implements a.InterfaceC0205a {
    private static final String TAG = "AudioDeviceProperty";
    private AudioDeviceCallback mAudioDeviceCallback;
    private a mAudioEventBroadcastReceiver;
    private final AudioManager mAudioManager;
    private b mBluetoothHeadsetListener;
    private final Context mContext;
    private long mNativeAudioDeviceProperty;
    private boolean mAudioDeviceCallbackAvailable = false;
    private boolean mUseBluetoothSco = false;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class UsbAudioDeviceInfo {

        /* renamed from: a  reason: collision with root package name */
        public String f10196a = "";
        public String b = "";

        public String getName() {
            return this.f10196a;
        }

        public String getVidPid() {
            return this.b;
        }
    }

    public AudioDeviceProperty(long j) {
        this.mNativeAudioDeviceProperty = j;
        Context applicationContext = ContextUtils.getApplicationContext();
        this.mContext = applicationContext;
        this.mAudioManager = (AudioManager) applicationContext.getSystemService("audio");
    }

    private void buildAudioDeviceCallback() {
        if (this.mAudioDeviceCallback != null) {
            return;
        }
        this.mAudioDeviceCallback = new AudioDeviceCallback() { // from class: com.tencent.liteav.audio2.route.AudioDeviceProperty.1
            @Override // android.media.AudioDeviceCallback
            public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                if (audioDeviceInfoArr.length != 0) {
                    AudioDeviceProperty.this.mAudioDeviceCallbackAvailable = true;
                    for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                        Log.i(AudioDeviceProperty.TAG, "added device type is " + audioDeviceInfo.getType() + " sink: " + audioDeviceInfo.isSink() + " product name: " + ((Object) audioDeviceInfo.getProductName()), new Object[0]);
                        if ((audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 26) && LiteavSystemInfo.getSystemOSVersionInt() > 30) {
                            AudioDeviceProperty.nativeNotifyBluetoothConnectionChangedFromJava(AudioDeviceProperty.this.mNativeAudioDeviceProperty, true);
                        } else if (audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 12 || audioDeviceInfo.getType() == 22) {
                            AudioDeviceProperty.nativeNotifyUsbConnectionChangedFromJava(AudioDeviceProperty.this.mNativeAudioDeviceProperty, audioDeviceInfo.getProductName().toString(), AudioDeviceProperty.this.isUsbHeadsetAvailable());
                        } else if (audioDeviceInfo.getType() == 3 || audioDeviceInfo.getType() == 4) {
                            AudioDeviceProperty.nativeNotifyWiredHeadsetConnectionChangedFromJava(AudioDeviceProperty.this.mNativeAudioDeviceProperty, true);
                        }
                    }
                }
            }

            @Override // android.media.AudioDeviceCallback
            public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                if (audioDeviceInfoArr.length != 0) {
                    for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                        Log.i(AudioDeviceProperty.TAG, "removed device type is " + audioDeviceInfo.getType() + " sink: " + audioDeviceInfo.isSink() + " product name: " + ((Object) audioDeviceInfo.getProductName()), new Object[0]);
                        if ((audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 26) && LiteavSystemInfo.getSystemOSVersionInt() > 30 && !AudioDeviceProperty.this.isBluetoothHeadsetConnected()) {
                            AudioDeviceProperty.nativeNotifyBluetoothConnectionChangedFromJava(AudioDeviceProperty.this.mNativeAudioDeviceProperty, false);
                        } else if (audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 12 || audioDeviceInfo.getType() == 22) {
                            AudioDeviceProperty.nativeNotifyUsbConnectionChangedFromJava(AudioDeviceProperty.this.mNativeAudioDeviceProperty, audioDeviceInfo.getProductName().toString(), AudioDeviceProperty.this.isUsbHeadsetAvailable());
                        } else if (audioDeviceInfo.getType() == 3 || audioDeviceInfo.getType() == 4) {
                            AudioDeviceProperty.nativeNotifyWiredHeadsetConnectionChangedFromJava(AudioDeviceProperty.this.mNativeAudioDeviceProperty, false);
                        }
                    }
                }
            }
        };
    }

    private boolean isCommunicationDeviceConnected(int i) {
        try {
            AudioDeviceInfo audioDeviceInfo = (AudioDeviceInfo) AudioManager.class.getMethod("getCommunicationDevice", null).invoke(this.mAudioManager, null);
            if (audioDeviceInfo == null) {
                return false;
            }
            if (audioDeviceInfo.getType() != i) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "get communication device failed. ".concat(String.valueOf(th)), new Object[0]);
            return false;
        }
    }

    public static boolean isUsbHeadsetDevice(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return false;
        }
        for (int i = 0; i < usbDevice.getInterfaceCount(); i++) {
            try {
                if (usbDevice.getInterface(i).getInterfaceClass() == 1) {
                    return true;
                }
            } catch (Throwable th) {
                Log.e(TAG, "Get interface exception " + th.getMessage(), new Object[0]);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeNotifyBluetoothConnectionChangedFromJava(long j, boolean z);

    private static native void nativeNotifyBluetoothScoConnectedFromJava(long j, boolean z);

    private static native void nativeNotifySystemVolumeChangedFromJava(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeNotifyUsbConnectionChangedFromJava(long j, String str, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeNotifyWiredHeadsetConnectionChangedFromJava(long j, boolean z);

    private void registerAudioDeviceCallback() {
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 23) {
            if (this.mAudioDeviceCallback == null) {
                buildAudioDeviceCallback();
            }
            AudioDeviceCallback audioDeviceCallback = this.mAudioDeviceCallback;
            if (audioDeviceCallback == null) {
                return;
            }
            try {
                this.mAudioManager.registerAudioDeviceCallback(audioDeviceCallback, null);
                Log.i(TAG, "register audio device callback", new Object[0]);
            } catch (Throwable th) {
                Log.e(TAG, "registerAudioDeviceCallback exception " + th.getMessage(), new Object[0]);
            }
        }
    }

    private void setCommunicationDevice(AudioDeviceInfo audioDeviceInfo) {
        try {
            boolean booleanValue = ((Boolean) AudioManager.class.getMethod("setCommunicationDevice", AudioDeviceInfo.class).invoke(this.mAudioManager, audioDeviceInfo)).booleanValue();
            if (!booleanValue) {
                AudioManager.class.getMethod("clearCommunicationDevice", null).invoke(this.mAudioManager, null);
            }
            Log.i(TAG, "setCommunicationDevice: " + booleanValue + ", type: " + audioDeviceInfo.getType() + ", product name: " + ((Object) audioDeviceInfo.getProductName()), new Object[0]);
        } catch (Throwable th) {
            Log.i(TAG, "set communication device failed. ".concat(String.valueOf(th)), new Object[0]);
        }
    }

    private void unregisterAudioDeviceCallback() {
        AudioDeviceCallback audioDeviceCallback;
        if (LiteavSystemInfo.getSystemOSVersionInt() < 23 || (audioDeviceCallback = this.mAudioDeviceCallback) == null) {
            return;
        }
        try {
            this.mAudioManager.unregisterAudioDeviceCallback(audioDeviceCallback);
            Log.i(TAG, "unregister audio device callback", new Object[0]);
        } catch (Throwable th) {
            Log.e(TAG, "unregisterAudioDeviceCallback exception " + th.getMessage(), new Object[0]);
        }
    }

    public UsbAudioDeviceInfo GetUsbAudioDeviceInfo(String str) {
        UsbAudioDeviceInfo usbAudioDeviceInfo = new UsbAudioDeviceInfo();
        try {
            UsbManager usbManager = (UsbManager) this.mContext.getSystemService("usb");
            if (usbManager != null && LiteavSystemInfo.getSystemOSVersionInt() >= 21) {
                for (UsbDevice usbDevice : usbManager.getDeviceList().values()) {
                    if (!str.contains(usbDevice.getProductName())) {
                        if (isUsbHeadsetDevice(usbDevice)) {
                        }
                    }
                    usbAudioDeviceInfo.f10196a = usbDevice.getProductName();
                    usbAudioDeviceInfo.b = String.valueOf(usbDevice.getVendorId()) + usbDevice.getProductId();
                    return usbAudioDeviceInfo;
                }
            }
        } catch (Throwable th) {
            Log.i(TAG, "getDeviceList exception " + th.getMessage(), new Object[0]);
        }
        return usbAudioDeviceInfo;
    }

    public boolean checkBluetoothPermission() {
        return b.a(this.mContext);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x0003, B:5:0x000c, B:9:0x001d, B:11:0x0030, B:14:0x0037, B:15:0x003b, B:17:0x0041, B:19:0x004e, B:21:0x0056, B:23:0x005a), top: B:27:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void connectBluetooth() {
        /*
            r7 = this;
            java.lang.String r0 = "AudioDeviceProperty"
            r1 = 0
            int r2 = com.tencent.liteav.base.system.LiteavSystemInfo.getSystemOSVersionInt()     // Catch: java.lang.Throwable -> L1b
            r3 = 35
            r4 = 1
            if (r2 >= r3) goto L1d
            r7.mUseBluetoothSco = r4     // Catch: java.lang.Throwable -> L1b
            android.media.AudioManager r2 = r7.mAudioManager     // Catch: java.lang.Throwable -> L1b
            r2.startBluetoothSco()     // Catch: java.lang.Throwable -> L1b
            java.lang.String r2 = "startBluetoothSco"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L1b
            com.tencent.liteav.base.Log.i(r0, r2, r3)     // Catch: java.lang.Throwable -> L1b
            return
        L1b:
            r2 = move-exception
            goto L69
        L1d:
            java.lang.Class<android.media.AudioManager> r2 = android.media.AudioManager.class
            java.lang.String r3 = "getAvailableCommunicationDevices"
            r5 = 0
            java.lang.reflect.Method r2 = r2.getMethod(r3, r5)     // Catch: java.lang.Throwable -> L1b
            android.media.AudioManager r3 = r7.mAudioManager     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r2 = r2.invoke(r3, r5)     // Catch: java.lang.Throwable -> L1b
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L1b
            if (r2 == 0) goto L68
            boolean r3 = r2.isEmpty()     // Catch: java.lang.Throwable -> L1b
            if (r3 == 0) goto L37
            goto L68
        L37:
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L1b
        L3b:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L1b
            if (r3 == 0) goto L5a
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L1b
            android.media.AudioDeviceInfo r3 = (android.media.AudioDeviceInfo) r3     // Catch: java.lang.Throwable -> L1b
            int r5 = r3.getType()     // Catch: java.lang.Throwable -> L1b
            r6 = 7
            if (r5 == r6) goto L56
            int r5 = r3.getType()     // Catch: java.lang.Throwable -> L1b
            r6 = 26
            if (r5 != r6) goto L3b
        L56:
            r7.setCommunicationDevice(r3)     // Catch: java.lang.Throwable -> L1b
            return
        L5a:
            java.lang.String r2 = "not found available communication devices, try to startBluetoothSco"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L1b
            com.tencent.liteav.base.Log.w(r0, r2, r3)     // Catch: java.lang.Throwable -> L1b
            r7.mUseBluetoothSco = r4     // Catch: java.lang.Throwable -> L1b
            android.media.AudioManager r2 = r7.mAudioManager     // Catch: java.lang.Throwable -> L1b
            r2.startBluetoothSco()     // Catch: java.lang.Throwable -> L1b
        L68:
            return
        L69:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "startBluetooth exception "
            r3.<init>(r4)
            java.lang.String r2 = r2.getMessage()
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            com.tencent.liteav.base.Log.i(r0, r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio2.route.AudioDeviceProperty.connectBluetooth():void");
    }

    public void disconnectBluetooth() {
        try {
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 35 && !this.mUseBluetoothSco) {
                AudioManager.class.getMethod("clearCommunicationDevice", null).invoke(this.mAudioManager, null);
                Log.i(TAG, "clearCommunicationDevice", new Object[0]);
                return;
            }
            this.mUseBluetoothSco = false;
            this.mAudioManager.stopBluetoothSco();
            Log.i(TAG, "stopBluetoothSco", new Object[0]);
        } catch (Throwable th) {
            Log.i(TAG, "stopBluetooth exception " + th.getMessage(), new Object[0]);
        }
    }

    public int getMode() {
        try {
            return this.mAudioManager.getMode();
        } catch (Throwable th) {
            Log.i(TAG, "Get mode exception " + th.getMessage(), new Object[0]);
            return 0;
        }
    }

    public int getSystemVolume() {
        int i;
        try {
            if (this.mAudioManager.getMode() == 0) {
                i = 3;
            } else {
                i = 0;
            }
            int streamMaxVolume = this.mAudioManager.getStreamMaxVolume(i);
            if (streamMaxVolume <= 0) {
                return -1;
            }
            return (int) ((this.mAudioManager.getStreamVolume(i) / streamMaxVolume) * 100.0f);
        } catch (Throwable th) {
            Log.e(TAG, "getStreamVolume exception " + th.getMessage(), new Object[0]);
            return -1;
        }
    }

    public boolean isBluetoothConnected() {
        try {
            if (LiteavSystemInfo.getSystemOSVersionInt() < 35) {
                Intent registerReceiver = ContextUtils.getApplicationContext().registerReceiver(null, new IntentFilter("android.media.ACTION_SCO_AUDIO_STATE_UPDATED"));
                if (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.SCO_AUDIO_STATE", 0) != 1) {
                    return false;
                }
                return true;
            } else if (!isCommunicationDeviceConnected(7) && !isCommunicationDeviceConnected(26)) {
                return false;
            } else {
                return true;
            }
        } catch (Throwable th) {
            Log.i(TAG, "isBluetoothConnected exception " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    public boolean isBluetoothHeadsetConnected() {
        b bVar = this.mBluetoothHeadsetListener;
        if (bVar == null) {
            Log.e(TAG, "mBluetoothHeadsetListener is null", new Object[0]);
            return false;
        }
        return bVar.a();
    }

    public boolean isBluetoothOn() {
        try {
            if (LiteavSystemInfo.getSystemOSVersionInt() < 35) {
                return this.mAudioManager.isBluetoothScoOn();
            }
            if (!isCommunicationDeviceConnected(7) && !isCommunicationDeviceConnected(26)) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            Log.i(TAG, "isBluetoothOn exception " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    public boolean isSpeakerphoneOn() {
        try {
            return this.mAudioManager.isSpeakerphoneOn();
        } catch (Throwable th) {
            Log.i(TAG, "isSpeakerphoneOn exception " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    public boolean isUsbHeadsetAvailable() {
        UsbManager usbManager;
        try {
            usbManager = (UsbManager) this.mContext.getSystemService("usb");
        } catch (Throwable th) {
            Log.i(TAG, "getDeviceList exception " + th.getMessage(), new Object[0]);
        }
        if (usbManager == null) {
            return false;
        }
        for (UsbDevice usbDevice : usbManager.getDeviceList().values()) {
            if (isUsbHeadsetDevice(usbDevice)) {
                return true;
            }
        }
        return false;
    }

    public boolean isWiredHeadsetOn() {
        try {
            return this.mAudioManager.isWiredHeadsetOn();
        } catch (Throwable th) {
            Log.i(TAG, "isWiredHeadsetOn exception " + th.getMessage(), new Object[0]);
            return false;
        }
    }

    @Override // com.tencent.liteav.audio2.route.a.InterfaceC0205a
    public void onBluetoothConnectionChanged(boolean z) {
        nativeNotifyBluetoothConnectionChangedFromJava(this.mNativeAudioDeviceProperty, z);
    }

    @Override // com.tencent.liteav.audio2.route.a.InterfaceC0205a
    public void onBluetoothScoConnected(boolean z) {
        nativeNotifyBluetoothScoConnectedFromJava(this.mNativeAudioDeviceProperty, z);
    }

    @Override // com.tencent.liteav.audio2.route.a.InterfaceC0205a
    public void onSystemVolumeChanged() {
        nativeNotifySystemVolumeChangedFromJava(this.mNativeAudioDeviceProperty);
    }

    @Override // com.tencent.liteav.audio2.route.a.InterfaceC0205a
    public void onUsbConnectionChanged(String str, boolean z) {
        if (this.mAudioDeviceCallbackAvailable) {
            return;
        }
        nativeNotifyUsbConnectionChangedFromJava(this.mNativeAudioDeviceProperty, str, z);
    }

    @Override // com.tencent.liteav.audio2.route.a.InterfaceC0205a
    public void onWiredHeadsetConnectionChanged(boolean z) {
        if (this.mAudioDeviceCallbackAvailable) {
            return;
        }
        nativeNotifyWiredHeadsetConnectionChangedFromJava(this.mNativeAudioDeviceProperty, z);
    }

    public void setBluetoothOn(boolean z) {
        try {
            if (LiteavSystemInfo.getSystemOSVersionInt() < 35) {
                this.mAudioManager.setBluetoothScoOn(z);
                Log.i(TAG, "setBluetoothScoOn ".concat(String.valueOf(z)), new Object[0]);
            }
        } catch (Throwable th) {
            Log.i(TAG, "setBluetoothOn exception " + th.getMessage(), new Object[0]);
        }
    }

    public void setSpeakerphoneOn(boolean z) {
        try {
            this.mAudioManager.setSpeakerphoneOn(z);
            Log.i(TAG, "setSpeakerphoneOn ".concat(String.valueOf(z)), new Object[0]);
        } catch (Throwable th) {
            Log.i(TAG, "setSpeakerphoneOn exception " + th.getMessage(), new Object[0]);
        }
    }

    public void setVoip(boolean z) {
        int i;
        if (z) {
            i = 3;
        } else {
            i = 0;
        }
        try {
            this.mAudioManager.setMode(i);
            Log.i(TAG, "setMode ".concat(String.valueOf(i)), new Object[0]);
        } catch (Throwable th) {
            Log.i(TAG, "Set mode exception " + th.getMessage(), new Object[0]);
        }
    }

    public void setWiredHeadsetOn(boolean z) {
        try {
            this.mAudioManager.setWiredHeadsetOn(z);
            Log.i(TAG, "setWiredHeadsetOn ".concat(String.valueOf(z)), new Object[0]);
        } catch (Throwable th) {
            Log.i(TAG, "setWiredHeadsetOn exception " + th.getMessage(), new Object[0]);
        }
    }

    public void start() {
        registerAudioDeviceCallback();
        a aVar = new a(this.mContext, this);
        this.mAudioEventBroadcastReceiver = aVar;
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.HEADSET_PLUG");
            intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
            intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
            intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            aVar.f10197a.registerReceiver(aVar, intentFilter);
        } catch (Throwable unused) {
            Log.e("AudioEventBroadcastReceiver", "register broadcast exception", new Object[0]);
        }
        this.mBluetoothHeadsetListener = new b(this.mContext);
    }

    public void stop() {
        Context context;
        a aVar = this.mAudioEventBroadcastReceiver;
        if (aVar != null && (context = aVar.f10197a) != null) {
            try {
                context.unregisterReceiver(aVar);
            } catch (Exception unused) {
            }
        }
        this.mAudioEventBroadcastReceiver = null;
        b bVar = this.mBluetoothHeadsetListener;
        if (bVar != null) {
            synchronized (bVar.c) {
                try {
                    if (bVar.f10198a != null && bVar.b != null) {
                        bVar.b();
                        bVar.b = null;
                    }
                } finally {
                }
            }
        }
        this.mBluetoothHeadsetListener = null;
        unregisterAudioDeviceCallback();
    }
}
