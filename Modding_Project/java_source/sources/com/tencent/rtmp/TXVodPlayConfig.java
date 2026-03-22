package com.tencent.rtmp;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXVodPlayConfig {
    String mCacheFolderPath;
    private int mEncryptedMp4Level;
    Map<String, String> mHeaders;
    int mMaxCacheItems;
    String mOverlayIv;
    String mOverlayKey;
    String mPreferAudioTrack;
    int mProgressInterval;
    int mConnectRetryCount = 3;
    int mConnectRetryInterval = 3;
    int mTimeout = 10;
    int mPlayerType = 1;
    boolean mEnableAccurateSeek = true;
    boolean mAutoRotate = true;
    boolean mSmoothSwitchBitrate = false;
    String mCacheMp4ExtName = "mp4";
    float mMaxBufferSize = 0.0f;
    float mMaxPreloadSize = 0.0f;
    int mFirstStartPlayBufferTime = 0;
    int mNextStartPlayBufferTime = 0;
    boolean mEnableRenderProcess = false;
    long mPreferredResolution = -1;
    int mMediaType = 0;
    Map<String, Object> mExtInfoMap = new ConcurrentHashMap();

    public String getCacheFolderPath() {
        return this.mCacheFolderPath;
    }

    public String getCacheMp4ExtName() {
        return this.mCacheMp4ExtName;
    }

    public int getConnectRetryCount() {
        return this.mConnectRetryCount;
    }

    public int getConnectRetryInterval() {
        return this.mConnectRetryInterval;
    }

    public int getEncryptedMp4Level() {
        return this.mEncryptedMp4Level;
    }

    public Map<String, Object> getExtInfoMap() {
        return this.mExtInfoMap;
    }

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    public float getMaxBufferSize() {
        return this.mMaxBufferSize;
    }

    public int getMaxCacheItems() {
        return this.mMaxCacheItems;
    }

    public float getMaxPreloadSize() {
        return this.mMaxPreloadSize;
    }

    public int getMediaType() {
        return this.mMediaType;
    }

    public String getOverlayIv() {
        return this.mOverlayIv;
    }

    public String getOverlayKey() {
        return this.mOverlayKey;
    }

    public int getPlayerType() {
        return this.mPlayerType;
    }

    public String getPreferredAudioTrack() {
        return this.mPreferAudioTrack;
    }

    public long getPreferredResolution() {
        return this.mPreferredResolution;
    }

    public int getProgressInterval() {
        return this.mProgressInterval;
    }

    public int getTimeout() {
        return this.mTimeout;
    }

    public boolean isAutoRotate() {
        return this.mAutoRotate;
    }

    public boolean isEnableAccurateSeek() {
        return this.mEnableAccurateSeek;
    }

    public boolean isEnableRenderProcess() {
        return this.mEnableRenderProcess;
    }

    public boolean isSmoothSwitchBitrate() {
        return this.mSmoothSwitchBitrate;
    }

    public void setAutoRotate(boolean z) {
        this.mAutoRotate = z;
    }

    @Deprecated
    public void setCacheFolderPath(String str) {
        this.mCacheFolderPath = str;
    }

    public void setCacheMp4ExtName(String str) {
        this.mCacheMp4ExtName = str;
    }

    public void setConnectRetryCount(int i) {
        this.mConnectRetryCount = i;
    }

    public void setConnectRetryInterval(int i) {
        this.mConnectRetryInterval = i;
    }

    public void setEnableAccurateSeek(boolean z) {
        this.mEnableAccurateSeek = z;
    }

    public void setEnableRenderProcess(boolean z) {
        this.mEnableRenderProcess = z;
    }

    public void setEncryptedMp4Level(int i) {
        this.mEncryptedMp4Level = i;
    }

    public void setExtInfo(Map<String, Object> map) {
        this.mExtInfoMap.clear();
        this.mExtInfoMap.putAll(map);
    }

    @Deprecated
    public void setFirstStartPlayBufferTime(int i) {
        this.mFirstStartPlayBufferTime = i;
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public void setMaxBufferSize(float f) {
        this.mMaxBufferSize = f;
    }

    @Deprecated
    public void setMaxCacheItems(int i) {
        this.mMaxCacheItems = i;
    }

    public void setMaxPreloadSize(float f) {
        this.mMaxPreloadSize = f;
    }

    public void setMediaType(int i) {
        this.mMediaType = i;
    }

    @Deprecated
    public void setNextStartPlayBufferTime(int i) {
        this.mNextStartPlayBufferTime = i;
    }

    public void setOverlayIv(String str) {
        this.mOverlayIv = str;
    }

    public void setOverlayKey(String str) {
        this.mOverlayKey = str;
    }

    public void setPlayerType(int i) {
        this.mPlayerType = i;
    }

    public void setPreferredAudioTrack(String str) {
        this.mPreferAudioTrack = str;
    }

    public void setPreferredResolution(long j) {
        this.mPreferredResolution = j;
    }

    public void setProgressInterval(int i) {
        this.mProgressInterval = i;
    }

    public void setSmoothSwitchBitrate(boolean z) {
        this.mSmoothSwitchBitrate = z;
    }

    public void setTimeout(int i) {
        this.mTimeout = i;
    }
}
