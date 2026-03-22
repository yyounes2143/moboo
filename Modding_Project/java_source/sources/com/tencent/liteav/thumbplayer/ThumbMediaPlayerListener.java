package com.tencent.liteav.thumbplayer;

import android.util.Log;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.thumbplayer.tcmedia.api.ITPPlayer;
import com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener;
import com.tencent.thumbplayer.tcmedia.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMsg;
import com.tencent.thumbplayer.tcmedia.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleData;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPVideoFrameBuffer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class ThumbMediaPlayerListener implements ITPPlayerListener.IOnAudioFrameOutputListener, ITPPlayerListener.IOnAudioProcessFrameOutputListener, ITPPlayerListener.IOnCompletionListener, ITPPlayerListener.IOnErrorListener, ITPPlayerListener.IOnInfoListener, ITPPlayerListener.IOnPreparedListener, ITPPlayerListener.IOnSeekCompleteListener, ITPPlayerListener.IOnStateChangeListener, ITPPlayerListener.IOnStopAsyncCompleteListener, ITPPlayerListener.IOnSubtitleDataListener, ITPPlayerListener.IOnSubtitleFrameOutListener, ITPPlayerListener.IOnVideoFrameOutListener, ITPPlayerListener.IOnVideoProcessFrameOutputListener, ITPPlayerListener.IOnVideoSizeChangedListener {
    private static final int ERROR_DEMUXER_PREPARE_TIMEOUT = 1104;
    private final String TAG = ThumbMediaPlayerListener.class.getName();
    private final ThumbMediaPlayer mThumbMediaPlayer;

    public ThumbMediaPlayerListener(ThumbMediaPlayer thumbMediaPlayer) {
        this.mThumbMediaPlayer = thumbMediaPlayer;
    }

    private void innerLogE(String str) {
        String str2 = this.TAG;
        LiteavLog.e(str2, "[" + hashCode() + "], " + str);
    }

    private void innerLogI(String str) {
        String str2 = this.TAG;
        LiteavLog.i(str2, "[" + hashCode() + "], " + str);
    }

    private int transferError(int i, int i2) {
        ThumbMediaPlayer thumbMediaPlayer;
        String propertyString;
        int i3 = TXVodConstants.VOD_PLAY_ERR_GENERAL;
        if (i != 1001) {
            if (i != 1100) {
                if (i != 1200) {
                    if (i != 1300) {
                        if (i != 1600) {
                            if (i != 4000) {
                                if (i != 1210 && i != 1211) {
                                    if (i != 1220 && i != 1221) {
                                        if (i != 1230 && i != 1231) {
                                            if (i != 2000) {
                                                if (i != 2001) {
                                                    switch (i) {
                                                        case 1103:
                                                        case 1104:
                                                            i3 = TXVodConstants.VOD_PLAY_ERR_DEMUXER_TIMEOUT;
                                                            break;
                                                    }
                                                } else {
                                                    i3 = -2301;
                                                }
                                            } else {
                                                i3 = TXVodConstants.VOD_PLAY_ERR_SYSTEM_PLAY_FAIL;
                                            }
                                        } else {
                                            i3 = TXVodConstants.VOD_PLAY_ERR_DECODE_SUBTITLE_FAIL;
                                        }
                                    }
                                } else {
                                    i3 = TXVodConstants.VOD_PLAY_ERR_DECODE_AUDIO_FAIL;
                                }
                            } else {
                                i3 = TXVodConstants.VOD_PLAY_ERR_DOWNLOAD_FAIL;
                            }
                        } else {
                            i3 = TXVodConstants.VOD_PLAY_ERR_PROCESS_VIDEO_FAIL;
                        }
                    } else {
                        i3 = TXVodConstants.VOD_PLAY_ERR_RENDER_FAIL;
                    }
                }
                i3 = TXVodConstants.VOD_PLAY_ERR_DECODE_VIDEO_FAIL;
                if (i == 1220 && (thumbMediaPlayer = this.mThumbMediaPlayer) != null && (propertyString = thumbMediaPlayer.getTPPPlayer().getPropertyString(0)) != null && (propertyString.toLowerCase().contains("hevc") || propertyString.toLowerCase().contains("h265"))) {
                    i3 = -2304;
                }
            }
            i3 = (i2 < 11070000 || i2 >= 11080000) ? TXVodConstants.VOD_PLAY_ERR_DEMUXER_FAIL : TXVodConstants.VOD_PLAY_ERR_DRM;
        } else if (i2 == 11010104) {
            i3 = -2305;
        }
        innerLogI("[transferError], errorType: " + i + " ,errorCode: " + i2 + " ,vodErrorEvent: " + i3);
        return i3;
    }

    private int transferInfo(int i) {
        if (i != 4) {
            if (i != 104) {
                if (i != 503) {
                    if (i != 1001) {
                        if (i == 1006) {
                            return 1006;
                        }
                        if (i != 1018) {
                            if (i != 106) {
                                if (i != 107) {
                                    if (i != 200) {
                                        if (i == 201) {
                                            return 2014;
                                        }
                                    } else {
                                        return 2007;
                                    }
                                } else {
                                    ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
                                    if (thumbMediaPlayer != null) {
                                        thumbMediaPlayer.onReceiveFirstPacketReadEvent();
                                        return -1;
                                    }
                                }
                            } else {
                                ThumbMediaPlayer thumbMediaPlayer2 = this.mThumbMediaPlayer;
                                if (thumbMediaPlayer2 != null) {
                                    thumbMediaPlayer2.onReceiveFirstVideoRenderEvent();
                                    return -1;
                                }
                            }
                        } else {
                            return 2002;
                        }
                    } else {
                        innerLogI("TP_PLAYER_INFO_LONG0_ALL_DOWNLOAD_FINISH");
                        ThumbMediaPlayer thumbMediaPlayer3 = this.mThumbMediaPlayer;
                        if (thumbMediaPlayer3 != null) {
                            thumbMediaPlayer3.updateTcpSpeed(0L);
                        }
                    }
                    return -1;
                }
                return TXVodConstants.VOD_PLAY_EVT_VIDEO_SEI;
            }
            return 2008;
        }
        return TXVodConstants.VOD_PLAY_EVT_SELECT_TRACK_COMPLETE;
    }

    public void attachToPlayer() {
        ITPPlayer tPPPlayer;
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null && (tPPPlayer = thumbMediaPlayer.getTPPPlayer()) != null) {
            tPPPlayer.setOnPreparedListener(this);
            tPPPlayer.setOnCompletionListener(this);
            tPPPlayer.setOnInfoListener(this);
            tPPPlayer.setOnErrorListener(this);
            tPPPlayer.setOnSeekCompleteListener(this);
            tPPPlayer.setOnVideoSizeChangedListener(this);
            tPPPlayer.setOnSubtitleDataListener(this);
            tPPPlayer.setOnSubtitleFrameOutListener(this);
            tPPPlayer.setOnVideoFrameOutListener(this);
            tPPPlayer.setOnAudioFrameOutputListener(this);
            tPPPlayer.setOnVideoProcessFrameOutputListener(this);
            tPPPlayer.setOnAudioProcessFrameOutputListener(this);
            tPPPlayer.setOnPlayerStateChangeListener(this);
            tPPPlayer.setOnStopAsyncCompleteListener(this);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnCompletionListener
    public void onCompletion(ITPPlayer iTPPlayer) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnCompletion();
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnErrorListener
    public void onError(ITPPlayer iTPPlayer, int i, int i2, long j, long j2) {
        if (i != 1000) {
            try {
                innerLogE("onError type: " + i + " code: " + i2 + " arg1: " + j + " arg2: " + j2);
                ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
                if (thumbMediaPlayer != null) {
                    thumbMediaPlayer.notifyOnError(transferError(i, i2), i2);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                innerLogE("onError, e= " + Log.getStackTraceString(th));
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnInfoListener
    public void onInfo(ITPPlayer iTPPlayer, int i, long j, long j2, Object obj) {
        String str;
        String[] split;
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null) {
            int transferInfo = transferInfo(i);
            int i2 = (int) j;
            if (obj != null && (obj instanceof TPPlayerMsg.TPCDNURLInfo)) {
                TPPlayerMsg.TPCDNURLInfo tPCDNURLInfo = (TPPlayerMsg.TPCDNURLInfo) obj;
                innerLogI("onInfo TPCDNURLInfo:cdnIp:" + tPCDNURLInfo.cdnIp + ":uIp:" + tPCDNURLInfo.uIp + ": url: " + tPCDNURLInfo.url + ":errorStr: " + tPCDNURLInfo.errorStr);
            }
            if (obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                TPPlayerMsg.TPDownLoadProgressInfo tPDownLoadProgressInfo = (TPPlayerMsg.TPDownLoadProgressInfo) obj;
                thumbMediaPlayer.updateBitrate(tPDownLoadProgressInfo.totalFileSize);
                long j3 = tPDownLoadProgressInfo.downloadSpeedKBps;
                if (j3 < 0 && (str = tPDownLoadProgressInfo.extraInfo) != null && (split = str.split(",")) != null) {
                    int length = split.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            String str2 = split[i3];
                            if (str2 != null && str2.contains("httpAvgSpeedKB")) {
                                j3 = Long.valueOf(str2.substring(str2.indexOf(":") + 1, str2.length()).trim()).longValue();
                                break;
                            }
                            i3++;
                        } else {
                            break;
                        }
                    }
                }
                thumbMediaPlayer.updateTcpSpeed(j3 * 1024);
            }
            if (obj instanceof TPPlayerMsg.TPVideoCropInfo) {
                TPPlayerMsg.TPVideoCropInfo tPVideoCropInfo = (TPPlayerMsg.TPVideoCropInfo) obj;
                innerLogI("onInfo TPVideoCropInfo:cropBottom:" + tPVideoCropInfo.cropBottom + ":cropLeft:" + tPVideoCropInfo.cropLeft + ": cropRight: " + tPVideoCropInfo.cropRight + ":cropTop: " + tPVideoCropInfo.cropTop + ":height:" + tPVideoCropInfo.height + ":width:" + tPVideoCropInfo.width);
            }
            thumbMediaPlayer.notifyOnInfo(transferInfo, i2, (int) j2, obj);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnPreparedListener
    public void onPrepared(ITPPlayer iTPPlayer) {
        innerLogI("onPrepared");
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnPrepared();
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnSeekCompleteListener
    public void onSeekComplete(ITPPlayer iTPPlayer) {
        innerLogI(" onSeekComplete");
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifyOnSeekComplete();
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnSubtitleDataListener
    public void onSubtitleData(ITPPlayer iTPPlayer, TPSubtitleData tPSubtitleData) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null && tPSubtitleData != null) {
            thumbMediaPlayer.notifyOnSubtitleData(tPSubtitleData);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnSubtitleFrameOutListener
    public void onSubtitleFrameOut(ITPPlayer iTPPlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null) {
            thumbMediaPlayer.notifySubtitleFrameData(tPSubtitleFrameBuffer);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnVideoSizeChangedListener
    public void onVideoSizeChanged(ITPPlayer iTPPlayer, long j, long j2) {
        ThumbMediaPlayer thumbMediaPlayer = this.mThumbMediaPlayer;
        if (thumbMediaPlayer != null) {
            innerLogI("onVideoSizeChanged width: " + j + " ,height: " + j2);
            thumbMediaPlayer.notifyOnVideoSizeChanged((int) j, (int) j2, thumbMediaPlayer.getVideoSarNum(), thumbMediaPlayer.getVideoSarDen(), null);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnStopAsyncCompleteListener
    public void onStopAsyncComplete(ITPPlayer iTPPlayer) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnAudioFrameOutputListener
    public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnAudioProcessFrameOutputListener
    public TPPostProcessFrameBuffer onAudioProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return tPPostProcessFrameBuffer;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnStateChangeListener
    public void onStateChange(int i, int i2) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnVideoFrameOutListener
    public void onVideoFrameOut(ITPPlayer iTPPlayer, TPVideoFrameBuffer tPVideoFrameBuffer) {
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnVideoProcessFrameOutputListener
    public TPPostProcessFrameBuffer onVideoProcessFrameOut(ITPPlayer iTPPlayer, TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        return tPPostProcessFrameBuffer;
    }
}
