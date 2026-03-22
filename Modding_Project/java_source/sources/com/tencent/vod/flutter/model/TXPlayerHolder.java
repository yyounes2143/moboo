package com.tencent.vod.flutter.model;

import com.tencent.live2.V2TXLivePlayer;
import com.tencent.rtmp.TXVodPlayer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXPlayerHolder {
    private boolean mIsPlayingWhenCreated;
    private V2TXLivePlayer mLivePlayer;
    private final int mPlayerType;
    private boolean mPlayingStatus;
    private TXVodPlayer mVodPlayer;

    public TXPlayerHolder(TXVodPlayer tXVodPlayer) {
        this.mIsPlayingWhenCreated = false;
        this.mVodPlayer = tXVodPlayer;
        boolean isPlaying = tXVodPlayer.isPlaying();
        this.mPlayingStatus = isPlaying;
        this.mIsPlayingWhenCreated = isPlaying;
        this.mPlayerType = 1;
    }

    public V2TXLivePlayer getLivePlayer() {
        return this.mLivePlayer;
    }

    public int getPlayerType() {
        return this.mPlayerType;
    }

    public TXVodPlayer getVodPlayer() {
        return this.mVodPlayer;
    }

    public boolean isPlaying() {
        return this.mPlayingStatus;
    }

    public boolean isPlayingWhenCreate() {
        return this.mIsPlayingWhenCreated;
    }

    public void pause() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.pause();
            this.mPlayingStatus = false;
            return;
        }
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.pauseAudio();
            this.mLivePlayer.pauseVideo();
            this.mPlayingStatus = false;
        }
    }

    public void resume() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.resume();
            this.mPlayingStatus = true;
            return;
        }
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.resumeAudio();
            this.mLivePlayer.resumeVideo();
            this.mPlayingStatus = true;
        }
    }

    public TXPlayerHolder(V2TXLivePlayer v2TXLivePlayer, boolean z) {
        this.mLivePlayer = v2TXLivePlayer;
        boolean z2 = !z;
        this.mPlayingStatus = z2;
        this.mIsPlayingWhenCreated = z2;
        this.mPlayerType = 2;
    }
}
