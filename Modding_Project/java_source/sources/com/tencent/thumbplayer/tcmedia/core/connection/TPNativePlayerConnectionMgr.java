package com.tencent.thumbplayer.tcmedia.core.connection;

import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.tcmedia.core.player.TPNativePlayer;
/* loaded from: classes6.dex */
public class TPNativePlayerConnectionMgr {
    private boolean mIsLibLoaded;
    private boolean mInited = false;
    private long mNativeContext = 0;

    public TPNativePlayerConnectionMgr() {
        this.mIsLibLoaded = false;
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(null);
            this.mIsLibLoaded = true;
        } catch (UnsupportedOperationException e) {
            e.printStackTrace();
            this.mIsLibLoaded = false;
        }
    }

    private native int _activeAllConnections();

    private native int _activeConnection(int i);

    private native int _addConnection(Object obj, Object obj2, Object obj3, Object obj4);

    private native int _addConnectionWithAddr(long j, Object obj, long j2, Object obj2);

    private native void _deactiveAllConnections();

    private native void _deactiveConnection(int i);

    private native void _init();

    private native void _removeConnection(int i);

    private native void _unInit();

    public int activeAllConnections() {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                return _activeAllConnections();
            }
            throw new IllegalStateException("Failed to addConnection due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public int activeConnection(int i) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                return _activeConnection(i);
            }
            throw new IllegalStateException("Failed to addConnection due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public int addConnection(long j, TPNativePlayerConnectionNode tPNativePlayerConnectionNode, long j2, TPNativePlayerConnectionNode tPNativePlayerConnectionNode2) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                return _addConnectionWithAddr(j, tPNativePlayerConnectionNode, j2, tPNativePlayerConnectionNode2);
            }
            throw new IllegalStateException("Failed to addConnection due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void deactiveAllConnections() {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _deactiveAllConnections();
                return;
            }
            throw new IllegalStateException("Failed to addConnection due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void deactiveConnection(int i) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _deactiveConnection(i);
                return;
            }
            throw new IllegalStateException("Failed to addConnection due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void init() {
        if (this.mIsLibLoaded) {
            if (!this.mInited) {
                this.mInited = true;
                _init();
                return;
            }
            throw new IllegalStateException("Failed to init due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void removeConnection(int i) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _removeConnection(i);
                return;
            }
            throw new IllegalStateException("Failed to addConnection due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void unInit() {
        if (this.mIsLibLoaded) {
            if (!this.mInited) {
                return;
            }
            this.mInited = false;
            _unInit();
            return;
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public int addConnection(TPNativePlayer tPNativePlayer, TPNativePlayerConnectionNode tPNativePlayerConnectionNode, TPNativePlayer tPNativePlayer2, TPNativePlayerConnectionNode tPNativePlayerConnectionNode2) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                return _addConnection(tPNativePlayer, tPNativePlayerConnectionNode, tPNativePlayer2, tPNativePlayerConnectionNode2);
            }
            throw new IllegalStateException("Failed to addConnection due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }
}
