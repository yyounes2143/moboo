package com.tencent.liteav.txcplayer.ext.service;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.Surface;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.common.c;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import com.tencent.liteav.txcplayer.ext.host.HostEngine;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class RenderProcessService {
    private static final String TAG = "HostEngine-RenderProcessService";
    private static RenderProcessService mInstance;
    private int mCurrentModel = 0;
    private ConcurrentHashMap<ITXVCubePlayer, WeakReference<IRenderServiceEventListener>> mEventListenerMap = new ConcurrentHashMap<>();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface IRenderServiceEventListener {
        void onRenderServiceEvent(ITXVCubePlayer iTXVCubePlayer, int i, Bundle bundle);
    }

    private RenderProcessService() {
    }

    public static RenderProcessService getInstance() {
        if (mInstance == null) {
            synchronized (RenderProcessService.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new RenderProcessService();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public boolean canRenderProcessWork(ITXVCubePlayer iTXVCubePlayer) {
        boolean z;
        if (iTXVCubePlayer != null && !iTXVCubePlayer.isEnableRenderProcess()) {
            LiteavLog.i(TAG, "[canRenderProcessWork],isEnableRenderProcess == false !!!");
            return false;
        } else if (!HostEngine.getInstance().checkAndLoadPlugin(2)) {
            LiteavLog.i(TAG, "[canRenderProcessWork],isEnableRenderProcess == false !!!");
            return false;
        } else {
            int i = this.mCurrentModel;
            if (i == 1 || i == 2) {
                HashMap hashMap = new HashMap();
                HostEngine.getInstance().sendSyncRequestToPlugin(2, 104, null, hashMap);
                Object obj = hashMap.get("KEY_RET_PARAM1");
                if (obj != null && (obj instanceof Boolean)) {
                    z = ((Boolean) obj).booleanValue();
                } else {
                    z = false;
                }
                if (!z) {
                    LiteavLog.i(TAG, "[canRenderProcessWork],IS_SUPPORT_RESOLUTION == false !!!");
                    return false;
                }
            }
            LiteavLog.i(TAG, "[canRenderProcessWork], finally return true");
            return true;
        }
    }

    public void checkInit(Context context) {
        HostEngine.getInstance().init(context);
    }

    public boolean connectPlayer(ITXVCubePlayer iTXVCubePlayer, Surface surface, int i, Map<String, Object> map) {
        if (iTXVCubePlayer != null && surface != null) {
            if (!canRenderProcessWork(iTXVCubePlayer)) {
                LiteavLog.w(TAG, "connectPlayer，postProcessService does not need to work");
                return false;
            }
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM1, iTXVCubePlayer);
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM2, surface);
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM3, Integer.valueOf(i));
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM4, map);
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 100, hashMap, hashMap2);
            Boolean bool = Boolean.FALSE;
            Object obj = hashMap2.get("KEY_RET_PARAM1");
            if (obj != null && (obj instanceof Boolean)) {
                bool = (Boolean) obj;
            }
            return bool.booleanValue();
        }
        LiteavLog.w(TAG, "connectPlayer invalid param player or surface is null !!!");
        return false;
    }

    public void doAction(ITXVCubePlayer iTXVCubePlayer, String str, Object obj) {
        if (iTXVCubePlayer == null) {
            LiteavLog.w(TAG, "doAction invalid param player or surface is null !!!");
        } else if (!canRenderProcessWork(iTXVCubePlayer)) {
            LiteavLog.w(TAG, "doAction，postProcessService does not need to work");
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM1, iTXVCubePlayer);
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM2, str);
            if (obj != null) {
                hashMap.put(EngineConst.ArgsKey.KEY_PARAM3, obj);
            }
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 107, hashMap, null);
        }
    }

    public int getVodLicenseFeature() {
        boolean z;
        if (HostEngine.getInstance().getAppContext() == null) {
            LiteavLog.w(TAG, "Host engine not init!!");
            return 0;
        }
        if (c.b(LicenseChecker.a.PLAYER_MONET) == LicenseChecker.d.OK) {
            z = true;
        } else {
            z = false;
        }
        LiteavLog.i("VodLicenseCheck", "checkValidForPlayerMonet = ".concat(String.valueOf(z)));
        if (!z) {
            return 0;
        }
        return 1;
    }

    public boolean onTouchEvent(ITXVCubePlayer iTXVCubePlayer, MotionEvent motionEvent) {
        if (!canRenderProcessWork(iTXVCubePlayer)) {
            return false;
        }
        int i = this.mCurrentModel;
        if (i != 11 && i != 12) {
            return false;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap.put(EngineConst.ArgsKey.KEY_PARAM1, iTXVCubePlayer);
        hashMap.put(EngineConst.ArgsKey.KEY_PARAM2, motionEvent);
        HostEngine.getInstance().sendSyncRequestToPlugin(2, 105, hashMap, hashMap2);
        Object obj = hashMap2.get("KEY_RET_PARAM1");
        if (obj == null || !(obj instanceof Boolean)) {
            return false;
        }
        return ((Boolean) obj).booleanValue();
    }

    public void postEventWithPlayer(ITXVCubePlayer iTXVCubePlayer, int i, Bundle bundle) {
        WeakReference<IRenderServiceEventListener> weakReference;
        IRenderServiceEventListener iRenderServiceEventListener;
        if (iTXVCubePlayer != null && (weakReference = this.mEventListenerMap.get(iTXVCubePlayer)) != null && (iRenderServiceEventListener = weakReference.get()) != null) {
            iRenderServiceEventListener.onRenderServiceEvent(iTXVCubePlayer, i, bundle);
        }
    }

    public void sendPlayerEventToPlugin(ITXVCubePlayer iTXVCubePlayer, int i, Bundle bundle) {
        if (iTXVCubePlayer == null) {
            LiteavLog.w(TAG, "sendPlayerEventToPlugin invalid param player is null !!!");
        } else if (!canRenderProcessWork(iTXVCubePlayer)) {
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM1, iTXVCubePlayer);
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM2, Integer.valueOf(i));
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM3, bundle);
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 106, hashMap, null);
        }
    }

    public void setRenderServiceEventListener(ITXVCubePlayer iTXVCubePlayer, IRenderServiceEventListener iRenderServiceEventListener) {
        if (iTXVCubePlayer != null) {
            if (iRenderServiceEventListener != null) {
                this.mEventListenerMap.put(iTXVCubePlayer, new WeakReference<>(iRenderServiceEventListener));
            } else {
                this.mEventListenerMap.remove(iTXVCubePlayer);
            }
        }
    }

    public boolean setSurfaceBufferSize(ITXVCubePlayer iTXVCubePlayer) {
        if (iTXVCubePlayer == null) {
            LiteavLog.w(TAG, "setSurfaceBufferSize invalid param player is null !!!");
            return false;
        } else if (!canRenderProcessWork(iTXVCubePlayer)) {
            LiteavLog.w(TAG, "setSurfaceBufferSize，postProcessService does not need to work");
            return false;
        } else {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM1, iTXVCubePlayer);
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 101, hashMap, hashMap2);
            Boolean bool = Boolean.FALSE;
            Object obj = hashMap2.get("KEY_RET_PARAM1");
            if (obj != null && (obj instanceof Boolean)) {
                bool = (Boolean) obj;
            }
            return bool.booleanValue();
        }
    }

    public void stopRenderProcess(ITXVCubePlayer iTXVCubePlayer) {
        if (!canRenderProcessWork(iTXVCubePlayer)) {
            return;
        }
        if (iTXVCubePlayer == null) {
            LiteavLog.w(TAG, "stopRenderProcess invalid param player is null !!!");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(EngineConst.ArgsKey.KEY_PARAM1, iTXVCubePlayer);
        HostEngine.getInstance().sendSyncRequestToPlugin(2, 103, hashMap, null);
    }

    public void updateRenderProcessMode(ITXVCubePlayer iTXVCubePlayer, int i) {
        this.mCurrentModel = i;
        if (!canRenderProcessWork(iTXVCubePlayer)) {
            LiteavLog.w(TAG, "updatePostProcessMode，postProcessService does not need to work");
        } else if (iTXVCubePlayer == null) {
            LiteavLog.w(TAG, "updatePostProcessMode invalid param player is null !!!");
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM1, iTXVCubePlayer);
            hashMap.put(EngineConst.ArgsKey.KEY_PARAM2, Integer.valueOf(i));
            HostEngine.getInstance().sendSyncRequestToPlugin(2, 102, hashMap, null);
        }
    }
}
