package com.tencent.vod.flutter.messages;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalID;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import com.tencent.vod.flutter.FTXEvent;
import com.tencent.vod.flutter.messages.FtxMessages;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FtxMessages {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class BoolMsg {
        @Nullable
        private Boolean value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Boolean value;

            @NonNull
            public BoolMsg build() {
                BoolMsg boolMsg = new BoolMsg();
                boolMsg.setValue(this.value);
                return boolMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable Boolean bool) {
                this.value = bool;
                return this;
            }
        }

        @NonNull
        public static BoolMsg fromList(@NonNull ArrayList<Object> arrayList) {
            BoolMsg boolMsg = new BoolMsg();
            boolMsg.setValue((Boolean) arrayList.get(0));
            return boolMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && BoolMsg.class == obj.getClass()) {
                return Objects.equals(this.value, ((BoolMsg) obj).value);
            }
            return false;
        }

        @Nullable
        public Boolean getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.value);
        }

        public void setValue(@Nullable Boolean bool) {
            this.value = bool;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class BoolPlayerMsg {
        @Nullable
        private Long playerId;
        @Nullable
        private Boolean value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long playerId;
            @Nullable
            private Boolean value;

            @NonNull
            public BoolPlayerMsg build() {
                BoolPlayerMsg boolPlayerMsg = new BoolPlayerMsg();
                boolPlayerMsg.setPlayerId(this.playerId);
                boolPlayerMsg.setValue(this.value);
                return boolPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable Boolean bool) {
                this.value = bool;
                return this;
            }
        }

        @NonNull
        public static BoolPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            BoolPlayerMsg boolPlayerMsg = new BoolPlayerMsg();
            boolPlayerMsg.setPlayerId((Long) arrayList.get(0));
            boolPlayerMsg.setValue((Boolean) arrayList.get(1));
            return boolPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && BoolPlayerMsg.class == obj.getClass()) {
                BoolPlayerMsg boolPlayerMsg = (BoolPlayerMsg) obj;
                if (Objects.equals(this.playerId, boolPlayerMsg.playerId) && Objects.equals(this.value, boolPlayerMsg.value)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public Boolean getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.value);
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setValue(@Nullable Boolean bool) {
            this.value = bool;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.playerId);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class CachePathMsg {
        @Nullable
        private String androidAbsolutePath;
        @Nullable
        private String iOSAbsolutePath;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String androidAbsolutePath;
            @Nullable
            private String iOSAbsolutePath;

            @NonNull
            public CachePathMsg build() {
                CachePathMsg cachePathMsg = new CachePathMsg();
                cachePathMsg.setAndroidAbsolutePath(this.androidAbsolutePath);
                cachePathMsg.setIOSAbsolutePath(this.iOSAbsolutePath);
                return cachePathMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAndroidAbsolutePath(@Nullable String str) {
                this.androidAbsolutePath = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setIOSAbsolutePath(@Nullable String str) {
                this.iOSAbsolutePath = str;
                return this;
            }
        }

        @NonNull
        public static CachePathMsg fromList(@NonNull ArrayList<Object> arrayList) {
            CachePathMsg cachePathMsg = new CachePathMsg();
            cachePathMsg.setAndroidAbsolutePath((String) arrayList.get(0));
            cachePathMsg.setIOSAbsolutePath((String) arrayList.get(1));
            return cachePathMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && CachePathMsg.class == obj.getClass()) {
                CachePathMsg cachePathMsg = (CachePathMsg) obj;
                if (Objects.equals(this.androidAbsolutePath, cachePathMsg.androidAbsolutePath) && Objects.equals(this.iOSAbsolutePath, cachePathMsg.iOSAbsolutePath)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getAndroidAbsolutePath() {
            return this.androidAbsolutePath;
        }

        @Nullable
        public String getIOSAbsolutePath() {
            return this.iOSAbsolutePath;
        }

        public int hashCode() {
            return Objects.hash(this.androidAbsolutePath, this.iOSAbsolutePath);
        }

        public void setAndroidAbsolutePath(@Nullable String str) {
            this.androidAbsolutePath = str;
        }

        public void setIOSAbsolutePath(@Nullable String str) {
            this.iOSAbsolutePath = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.androidAbsolutePath);
            arrayList.add(this.iOSAbsolutePath);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes6.dex */
    public @interface CanIgnoreReturnValue {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class DoubleMsg {
        @Nullable
        private Double value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Double value;

            @NonNull
            public DoubleMsg build() {
                DoubleMsg doubleMsg = new DoubleMsg();
                doubleMsg.setValue(this.value);
                return doubleMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable Double d) {
                this.value = d;
                return this;
            }
        }

        @NonNull
        public static DoubleMsg fromList(@NonNull ArrayList<Object> arrayList) {
            DoubleMsg doubleMsg = new DoubleMsg();
            doubleMsg.setValue((Double) arrayList.get(0));
            return doubleMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && DoubleMsg.class == obj.getClass()) {
                return Objects.equals(this.value, ((DoubleMsg) obj).value);
            }
            return false;
        }

        @Nullable
        public Double getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.value);
        }

        public void setValue(@Nullable Double d) {
            this.value = d;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class DoublePlayerMsg {
        @Nullable
        private Long playerId;
        @Nullable
        private Double value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long playerId;
            @Nullable
            private Double value;

            @NonNull
            public DoublePlayerMsg build() {
                DoublePlayerMsg doublePlayerMsg = new DoublePlayerMsg();
                doublePlayerMsg.setPlayerId(this.playerId);
                doublePlayerMsg.setValue(this.value);
                return doublePlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable Double d) {
                this.value = d;
                return this;
            }
        }

        @NonNull
        public static DoublePlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            DoublePlayerMsg doublePlayerMsg = new DoublePlayerMsg();
            doublePlayerMsg.setPlayerId((Long) arrayList.get(0));
            doublePlayerMsg.setValue((Double) arrayList.get(1));
            return doublePlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && DoublePlayerMsg.class == obj.getClass()) {
                DoublePlayerMsg doublePlayerMsg = (DoublePlayerMsg) obj;
                if (Objects.equals(this.playerId, doublePlayerMsg.playerId) && Objects.equals(this.value, doublePlayerMsg.value)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public Double getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.value);
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setValue(@Nullable Double d) {
            this.value = d;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.playerId);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class FTXLivePlayConfigPlayerMsg {
        @Nullable
        private Boolean autoAdjustCacheTime;
        @Nullable
        private Double cacheTime;
        @Nullable
        private Long connectRetryCount;
        @Nullable
        private Long connectRetryInterval;
        @Nullable
        private Boolean enableAec;
        @Nullable
        private Boolean enableMessage;
        @Nullable
        private Boolean enableMetaData;
        @Nullable
        private String flvSessionKey;
        @Nullable
        private Double maxAutoAdjustCacheTime;
        @Nullable
        private Double minAutoAdjustCacheTime;
        @Nullable
        private Long playerId;
        @Nullable
        private Long videoBlockThreshold;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Boolean autoAdjustCacheTime;
            @Nullable
            private Double cacheTime;
            @Nullable
            private Long connectRetryCount;
            @Nullable
            private Long connectRetryInterval;
            @Nullable
            private Boolean enableAec;
            @Nullable
            private Boolean enableMessage;
            @Nullable
            private Boolean enableMetaData;
            @Nullable
            private String flvSessionKey;
            @Nullable
            private Double maxAutoAdjustCacheTime;
            @Nullable
            private Double minAutoAdjustCacheTime;
            @Nullable
            private Long playerId;
            @Nullable
            private Long videoBlockThreshold;

            @NonNull
            public FTXLivePlayConfigPlayerMsg build() {
                FTXLivePlayConfigPlayerMsg fTXLivePlayConfigPlayerMsg = new FTXLivePlayConfigPlayerMsg();
                fTXLivePlayConfigPlayerMsg.setPlayerId(this.playerId);
                fTXLivePlayConfigPlayerMsg.setCacheTime(this.cacheTime);
                fTXLivePlayConfigPlayerMsg.setMaxAutoAdjustCacheTime(this.maxAutoAdjustCacheTime);
                fTXLivePlayConfigPlayerMsg.setMinAutoAdjustCacheTime(this.minAutoAdjustCacheTime);
                fTXLivePlayConfigPlayerMsg.setVideoBlockThreshold(this.videoBlockThreshold);
                fTXLivePlayConfigPlayerMsg.setConnectRetryCount(this.connectRetryCount);
                fTXLivePlayConfigPlayerMsg.setConnectRetryInterval(this.connectRetryInterval);
                fTXLivePlayConfigPlayerMsg.setAutoAdjustCacheTime(this.autoAdjustCacheTime);
                fTXLivePlayConfigPlayerMsg.setEnableAec(this.enableAec);
                fTXLivePlayConfigPlayerMsg.setEnableMessage(this.enableMessage);
                fTXLivePlayConfigPlayerMsg.setEnableMetaData(this.enableMetaData);
                fTXLivePlayConfigPlayerMsg.setFlvSessionKey(this.flvSessionKey);
                return fTXLivePlayConfigPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAutoAdjustCacheTime(@Nullable Boolean bool) {
                this.autoAdjustCacheTime = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setCacheTime(@Nullable Double d) {
                this.cacheTime = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setConnectRetryCount(@Nullable Long l) {
                this.connectRetryCount = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setConnectRetryInterval(@Nullable Long l) {
                this.connectRetryInterval = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setEnableAec(@Nullable Boolean bool) {
                this.enableAec = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setEnableMessage(@Nullable Boolean bool) {
                this.enableMessage = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setEnableMetaData(@Nullable Boolean bool) {
                this.enableMetaData = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFlvSessionKey(@Nullable String str) {
                this.flvSessionKey = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMaxAutoAdjustCacheTime(@Nullable Double d) {
                this.maxAutoAdjustCacheTime = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMinAutoAdjustCacheTime(@Nullable Double d) {
                this.minAutoAdjustCacheTime = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setVideoBlockThreshold(@Nullable Long l) {
                this.videoBlockThreshold = l;
                return this;
            }
        }

        @NonNull
        public static FTXLivePlayConfigPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            FTXLivePlayConfigPlayerMsg fTXLivePlayConfigPlayerMsg = new FTXLivePlayConfigPlayerMsg();
            fTXLivePlayConfigPlayerMsg.setPlayerId((Long) arrayList.get(0));
            fTXLivePlayConfigPlayerMsg.setCacheTime((Double) arrayList.get(1));
            fTXLivePlayConfigPlayerMsg.setMaxAutoAdjustCacheTime((Double) arrayList.get(2));
            fTXLivePlayConfigPlayerMsg.setMinAutoAdjustCacheTime((Double) arrayList.get(3));
            fTXLivePlayConfigPlayerMsg.setVideoBlockThreshold((Long) arrayList.get(4));
            fTXLivePlayConfigPlayerMsg.setConnectRetryCount((Long) arrayList.get(5));
            fTXLivePlayConfigPlayerMsg.setConnectRetryInterval((Long) arrayList.get(6));
            fTXLivePlayConfigPlayerMsg.setAutoAdjustCacheTime((Boolean) arrayList.get(7));
            fTXLivePlayConfigPlayerMsg.setEnableAec((Boolean) arrayList.get(8));
            fTXLivePlayConfigPlayerMsg.setEnableMessage((Boolean) arrayList.get(9));
            fTXLivePlayConfigPlayerMsg.setEnableMetaData((Boolean) arrayList.get(10));
            fTXLivePlayConfigPlayerMsg.setFlvSessionKey((String) arrayList.get(11));
            return fTXLivePlayConfigPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && FTXLivePlayConfigPlayerMsg.class == obj.getClass()) {
                FTXLivePlayConfigPlayerMsg fTXLivePlayConfigPlayerMsg = (FTXLivePlayConfigPlayerMsg) obj;
                if (Objects.equals(this.playerId, fTXLivePlayConfigPlayerMsg.playerId) && Objects.equals(this.cacheTime, fTXLivePlayConfigPlayerMsg.cacheTime) && Objects.equals(this.maxAutoAdjustCacheTime, fTXLivePlayConfigPlayerMsg.maxAutoAdjustCacheTime) && Objects.equals(this.minAutoAdjustCacheTime, fTXLivePlayConfigPlayerMsg.minAutoAdjustCacheTime) && Objects.equals(this.videoBlockThreshold, fTXLivePlayConfigPlayerMsg.videoBlockThreshold) && Objects.equals(this.connectRetryCount, fTXLivePlayConfigPlayerMsg.connectRetryCount) && Objects.equals(this.connectRetryInterval, fTXLivePlayConfigPlayerMsg.connectRetryInterval) && Objects.equals(this.autoAdjustCacheTime, fTXLivePlayConfigPlayerMsg.autoAdjustCacheTime) && Objects.equals(this.enableAec, fTXLivePlayConfigPlayerMsg.enableAec) && Objects.equals(this.enableMessage, fTXLivePlayConfigPlayerMsg.enableMessage) && Objects.equals(this.enableMetaData, fTXLivePlayConfigPlayerMsg.enableMetaData) && Objects.equals(this.flvSessionKey, fTXLivePlayConfigPlayerMsg.flvSessionKey)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Boolean getAutoAdjustCacheTime() {
            return this.autoAdjustCacheTime;
        }

        @Nullable
        public Double getCacheTime() {
            return this.cacheTime;
        }

        @Nullable
        public Long getConnectRetryCount() {
            return this.connectRetryCount;
        }

        @Nullable
        public Long getConnectRetryInterval() {
            return this.connectRetryInterval;
        }

        @Nullable
        public Boolean getEnableAec() {
            return this.enableAec;
        }

        @Nullable
        public Boolean getEnableMessage() {
            return this.enableMessage;
        }

        @Nullable
        public Boolean getEnableMetaData() {
            return this.enableMetaData;
        }

        @Nullable
        public String getFlvSessionKey() {
            return this.flvSessionKey;
        }

        @Nullable
        public Double getMaxAutoAdjustCacheTime() {
            return this.maxAutoAdjustCacheTime;
        }

        @Nullable
        public Double getMinAutoAdjustCacheTime() {
            return this.minAutoAdjustCacheTime;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public Long getVideoBlockThreshold() {
            return this.videoBlockThreshold;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.cacheTime, this.maxAutoAdjustCacheTime, this.minAutoAdjustCacheTime, this.videoBlockThreshold, this.connectRetryCount, this.connectRetryInterval, this.autoAdjustCacheTime, this.enableAec, this.enableMessage, this.enableMetaData, this.flvSessionKey);
        }

        public void setAutoAdjustCacheTime(@Nullable Boolean bool) {
            this.autoAdjustCacheTime = bool;
        }

        public void setCacheTime(@Nullable Double d) {
            this.cacheTime = d;
        }

        public void setConnectRetryCount(@Nullable Long l) {
            this.connectRetryCount = l;
        }

        public void setConnectRetryInterval(@Nullable Long l) {
            this.connectRetryInterval = l;
        }

        public void setEnableAec(@Nullable Boolean bool) {
            this.enableAec = bool;
        }

        public void setEnableMessage(@Nullable Boolean bool) {
            this.enableMessage = bool;
        }

        public void setEnableMetaData(@Nullable Boolean bool) {
            this.enableMetaData = bool;
        }

        public void setFlvSessionKey(@Nullable String str) {
            this.flvSessionKey = str;
        }

        public void setMaxAutoAdjustCacheTime(@Nullable Double d) {
            this.maxAutoAdjustCacheTime = d;
        }

        public void setMinAutoAdjustCacheTime(@Nullable Double d) {
            this.minAutoAdjustCacheTime = d;
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setVideoBlockThreshold(@Nullable Long l) {
            this.videoBlockThreshold = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(12);
            arrayList.add(this.playerId);
            arrayList.add(this.cacheTime);
            arrayList.add(this.maxAutoAdjustCacheTime);
            arrayList.add(this.minAutoAdjustCacheTime);
            arrayList.add(this.videoBlockThreshold);
            arrayList.add(this.connectRetryCount);
            arrayList.add(this.connectRetryInterval);
            arrayList.add(this.autoAdjustCacheTime);
            arrayList.add(this.enableAec);
            arrayList.add(this.enableMessage);
            arrayList.add(this.enableMetaData);
            arrayList.add(this.flvSessionKey);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class FTXVodPlayConfigPlayerMsg {
        @Nullable
        private Boolean autoRotate;
        @Nullable
        private String cacheMp4ExtName;
        @Nullable
        private Long connectRetryCount;
        @Nullable
        private Long connectRetryInterval;
        @Nullable
        private Boolean enableAccurateSeek;
        @Nullable
        private Boolean enableRenderProcess;
        @Nullable
        private Long encryptedMp4Level;
        @Nullable
        private Map<String, Object> extInfoMap;
        @Nullable
        private Long firstStartPlayBufferTime;
        @Nullable
        private Map<String, String> headers;
        @Nullable
        private Double maxBufferSize;
        @Nullable
        private Double maxPreloadSize;
        @Nullable
        private Long mediaType;
        @Nullable
        private Long nextStartPlayBufferTime;
        @Nullable
        private String overlayIv;
        @Nullable
        private String overlayKey;
        @Nullable
        private Long playerId;
        @Nullable
        private Long playerType;
        @Nullable
        private String preferAudioTrack;
        @Nullable
        private Long preferredResolution;
        @Nullable
        private Long progressInterval;
        @Nullable
        private Boolean smoothSwitchBitrate;
        @Nullable
        private Long timeout;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Boolean autoRotate;
            @Nullable
            private String cacheMp4ExtName;
            @Nullable
            private Long connectRetryCount;
            @Nullable
            private Long connectRetryInterval;
            @Nullable
            private Boolean enableAccurateSeek;
            @Nullable
            private Boolean enableRenderProcess;
            @Nullable
            private Long encryptedMp4Level;
            @Nullable
            private Map<String, Object> extInfoMap;
            @Nullable
            private Long firstStartPlayBufferTime;
            @Nullable
            private Map<String, String> headers;
            @Nullable
            private Double maxBufferSize;
            @Nullable
            private Double maxPreloadSize;
            @Nullable
            private Long mediaType;
            @Nullable
            private Long nextStartPlayBufferTime;
            @Nullable
            private String overlayIv;
            @Nullable
            private String overlayKey;
            @Nullable
            private Long playerId;
            @Nullable
            private Long playerType;
            @Nullable
            private String preferAudioTrack;
            @Nullable
            private Long preferredResolution;
            @Nullable
            private Long progressInterval;
            @Nullable
            private Boolean smoothSwitchBitrate;
            @Nullable
            private Long timeout;

            @NonNull
            public FTXVodPlayConfigPlayerMsg build() {
                FTXVodPlayConfigPlayerMsg fTXVodPlayConfigPlayerMsg = new FTXVodPlayConfigPlayerMsg();
                fTXVodPlayConfigPlayerMsg.setPlayerId(this.playerId);
                fTXVodPlayConfigPlayerMsg.setConnectRetryCount(this.connectRetryCount);
                fTXVodPlayConfigPlayerMsg.setConnectRetryInterval(this.connectRetryInterval);
                fTXVodPlayConfigPlayerMsg.setTimeout(this.timeout);
                fTXVodPlayConfigPlayerMsg.setPlayerType(this.playerType);
                fTXVodPlayConfigPlayerMsg.setHeaders(this.headers);
                fTXVodPlayConfigPlayerMsg.setEnableAccurateSeek(this.enableAccurateSeek);
                fTXVodPlayConfigPlayerMsg.setAutoRotate(this.autoRotate);
                fTXVodPlayConfigPlayerMsg.setSmoothSwitchBitrate(this.smoothSwitchBitrate);
                fTXVodPlayConfigPlayerMsg.setCacheMp4ExtName(this.cacheMp4ExtName);
                fTXVodPlayConfigPlayerMsg.setProgressInterval(this.progressInterval);
                fTXVodPlayConfigPlayerMsg.setMaxBufferSize(this.maxBufferSize);
                fTXVodPlayConfigPlayerMsg.setMaxPreloadSize(this.maxPreloadSize);
                fTXVodPlayConfigPlayerMsg.setFirstStartPlayBufferTime(this.firstStartPlayBufferTime);
                fTXVodPlayConfigPlayerMsg.setNextStartPlayBufferTime(this.nextStartPlayBufferTime);
                fTXVodPlayConfigPlayerMsg.setOverlayKey(this.overlayKey);
                fTXVodPlayConfigPlayerMsg.setOverlayIv(this.overlayIv);
                fTXVodPlayConfigPlayerMsg.setExtInfoMap(this.extInfoMap);
                fTXVodPlayConfigPlayerMsg.setEnableRenderProcess(this.enableRenderProcess);
                fTXVodPlayConfigPlayerMsg.setPreferredResolution(this.preferredResolution);
                fTXVodPlayConfigPlayerMsg.setMediaType(this.mediaType);
                fTXVodPlayConfigPlayerMsg.setEncryptedMp4Level(this.encryptedMp4Level);
                fTXVodPlayConfigPlayerMsg.setPreferAudioTrack(this.preferAudioTrack);
                return fTXVodPlayConfigPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAutoRotate(@Nullable Boolean bool) {
                this.autoRotate = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setCacheMp4ExtName(@Nullable String str) {
                this.cacheMp4ExtName = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setConnectRetryCount(@Nullable Long l) {
                this.connectRetryCount = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setConnectRetryInterval(@Nullable Long l) {
                this.connectRetryInterval = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setEnableAccurateSeek(@Nullable Boolean bool) {
                this.enableAccurateSeek = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setEnableRenderProcess(@Nullable Boolean bool) {
                this.enableRenderProcess = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setEncryptedMp4Level(@Nullable Long l) {
                this.encryptedMp4Level = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setExtInfoMap(@Nullable Map<String, Object> map) {
                this.extInfoMap = map;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFirstStartPlayBufferTime(@Nullable Long l) {
                this.firstStartPlayBufferTime = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setHeaders(@Nullable Map<String, String> map) {
                this.headers = map;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMaxBufferSize(@Nullable Double d) {
                this.maxBufferSize = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMaxPreloadSize(@Nullable Double d) {
                this.maxPreloadSize = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMediaType(@Nullable Long l) {
                this.mediaType = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setNextStartPlayBufferTime(@Nullable Long l) {
                this.nextStartPlayBufferTime = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setOverlayIv(@Nullable String str) {
                this.overlayIv = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setOverlayKey(@Nullable String str) {
                this.overlayKey = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerType(@Nullable Long l) {
                this.playerType = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPreferAudioTrack(@Nullable String str) {
                this.preferAudioTrack = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPreferredResolution(@Nullable Long l) {
                this.preferredResolution = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setProgressInterval(@Nullable Long l) {
                this.progressInterval = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setSmoothSwitchBitrate(@Nullable Boolean bool) {
                this.smoothSwitchBitrate = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setTimeout(@Nullable Long l) {
                this.timeout = l;
                return this;
            }
        }

        @NonNull
        public static FTXVodPlayConfigPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            FTXVodPlayConfigPlayerMsg fTXVodPlayConfigPlayerMsg = new FTXVodPlayConfigPlayerMsg();
            fTXVodPlayConfigPlayerMsg.setPlayerId((Long) arrayList.get(0));
            fTXVodPlayConfigPlayerMsg.setConnectRetryCount((Long) arrayList.get(1));
            fTXVodPlayConfigPlayerMsg.setConnectRetryInterval((Long) arrayList.get(2));
            fTXVodPlayConfigPlayerMsg.setTimeout((Long) arrayList.get(3));
            fTXVodPlayConfigPlayerMsg.setPlayerType((Long) arrayList.get(4));
            fTXVodPlayConfigPlayerMsg.setHeaders((Map) arrayList.get(5));
            fTXVodPlayConfigPlayerMsg.setEnableAccurateSeek((Boolean) arrayList.get(6));
            fTXVodPlayConfigPlayerMsg.setAutoRotate((Boolean) arrayList.get(7));
            fTXVodPlayConfigPlayerMsg.setSmoothSwitchBitrate((Boolean) arrayList.get(8));
            fTXVodPlayConfigPlayerMsg.setCacheMp4ExtName((String) arrayList.get(9));
            fTXVodPlayConfigPlayerMsg.setProgressInterval((Long) arrayList.get(10));
            fTXVodPlayConfigPlayerMsg.setMaxBufferSize((Double) arrayList.get(11));
            fTXVodPlayConfigPlayerMsg.setMaxPreloadSize((Double) arrayList.get(12));
            fTXVodPlayConfigPlayerMsg.setFirstStartPlayBufferTime((Long) arrayList.get(13));
            fTXVodPlayConfigPlayerMsg.setNextStartPlayBufferTime((Long) arrayList.get(14));
            fTXVodPlayConfigPlayerMsg.setOverlayKey((String) arrayList.get(15));
            fTXVodPlayConfigPlayerMsg.setOverlayIv((String) arrayList.get(16));
            fTXVodPlayConfigPlayerMsg.setExtInfoMap((Map) arrayList.get(17));
            fTXVodPlayConfigPlayerMsg.setEnableRenderProcess((Boolean) arrayList.get(18));
            fTXVodPlayConfigPlayerMsg.setPreferredResolution((Long) arrayList.get(19));
            fTXVodPlayConfigPlayerMsg.setMediaType((Long) arrayList.get(20));
            fTXVodPlayConfigPlayerMsg.setEncryptedMp4Level((Long) arrayList.get(21));
            fTXVodPlayConfigPlayerMsg.setPreferAudioTrack((String) arrayList.get(22));
            return fTXVodPlayConfigPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && FTXVodPlayConfigPlayerMsg.class == obj.getClass()) {
                FTXVodPlayConfigPlayerMsg fTXVodPlayConfigPlayerMsg = (FTXVodPlayConfigPlayerMsg) obj;
                if (Objects.equals(this.playerId, fTXVodPlayConfigPlayerMsg.playerId) && Objects.equals(this.connectRetryCount, fTXVodPlayConfigPlayerMsg.connectRetryCount) && Objects.equals(this.connectRetryInterval, fTXVodPlayConfigPlayerMsg.connectRetryInterval) && Objects.equals(this.timeout, fTXVodPlayConfigPlayerMsg.timeout) && Objects.equals(this.playerType, fTXVodPlayConfigPlayerMsg.playerType) && Objects.equals(this.headers, fTXVodPlayConfigPlayerMsg.headers) && Objects.equals(this.enableAccurateSeek, fTXVodPlayConfigPlayerMsg.enableAccurateSeek) && Objects.equals(this.autoRotate, fTXVodPlayConfigPlayerMsg.autoRotate) && Objects.equals(this.smoothSwitchBitrate, fTXVodPlayConfigPlayerMsg.smoothSwitchBitrate) && Objects.equals(this.cacheMp4ExtName, fTXVodPlayConfigPlayerMsg.cacheMp4ExtName) && Objects.equals(this.progressInterval, fTXVodPlayConfigPlayerMsg.progressInterval) && Objects.equals(this.maxBufferSize, fTXVodPlayConfigPlayerMsg.maxBufferSize) && Objects.equals(this.maxPreloadSize, fTXVodPlayConfigPlayerMsg.maxPreloadSize) && Objects.equals(this.firstStartPlayBufferTime, fTXVodPlayConfigPlayerMsg.firstStartPlayBufferTime) && Objects.equals(this.nextStartPlayBufferTime, fTXVodPlayConfigPlayerMsg.nextStartPlayBufferTime) && Objects.equals(this.overlayKey, fTXVodPlayConfigPlayerMsg.overlayKey) && Objects.equals(this.overlayIv, fTXVodPlayConfigPlayerMsg.overlayIv) && Objects.equals(this.extInfoMap, fTXVodPlayConfigPlayerMsg.extInfoMap) && Objects.equals(this.enableRenderProcess, fTXVodPlayConfigPlayerMsg.enableRenderProcess) && Objects.equals(this.preferredResolution, fTXVodPlayConfigPlayerMsg.preferredResolution) && Objects.equals(this.mediaType, fTXVodPlayConfigPlayerMsg.mediaType) && Objects.equals(this.encryptedMp4Level, fTXVodPlayConfigPlayerMsg.encryptedMp4Level) && Objects.equals(this.preferAudioTrack, fTXVodPlayConfigPlayerMsg.preferAudioTrack)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Boolean getAutoRotate() {
            return this.autoRotate;
        }

        @Nullable
        public String getCacheMp4ExtName() {
            return this.cacheMp4ExtName;
        }

        @Nullable
        public Long getConnectRetryCount() {
            return this.connectRetryCount;
        }

        @Nullable
        public Long getConnectRetryInterval() {
            return this.connectRetryInterval;
        }

        @Nullable
        public Boolean getEnableAccurateSeek() {
            return this.enableAccurateSeek;
        }

        @Nullable
        public Boolean getEnableRenderProcess() {
            return this.enableRenderProcess;
        }

        @Nullable
        public Long getEncryptedMp4Level() {
            return this.encryptedMp4Level;
        }

        @Nullable
        public Map<String, Object> getExtInfoMap() {
            return this.extInfoMap;
        }

        @Nullable
        public Long getFirstStartPlayBufferTime() {
            return this.firstStartPlayBufferTime;
        }

        @Nullable
        public Map<String, String> getHeaders() {
            return this.headers;
        }

        @Nullable
        public Double getMaxBufferSize() {
            return this.maxBufferSize;
        }

        @Nullable
        public Double getMaxPreloadSize() {
            return this.maxPreloadSize;
        }

        @Nullable
        public Long getMediaType() {
            return this.mediaType;
        }

        @Nullable
        public Long getNextStartPlayBufferTime() {
            return this.nextStartPlayBufferTime;
        }

        @Nullable
        public String getOverlayIv() {
            return this.overlayIv;
        }

        @Nullable
        public String getOverlayKey() {
            return this.overlayKey;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public Long getPlayerType() {
            return this.playerType;
        }

        @Nullable
        public String getPreferAudioTrack() {
            return this.preferAudioTrack;
        }

        @Nullable
        public Long getPreferredResolution() {
            return this.preferredResolution;
        }

        @Nullable
        public Long getProgressInterval() {
            return this.progressInterval;
        }

        @Nullable
        public Boolean getSmoothSwitchBitrate() {
            return this.smoothSwitchBitrate;
        }

        @Nullable
        public Long getTimeout() {
            return this.timeout;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.connectRetryCount, this.connectRetryInterval, this.timeout, this.playerType, this.headers, this.enableAccurateSeek, this.autoRotate, this.smoothSwitchBitrate, this.cacheMp4ExtName, this.progressInterval, this.maxBufferSize, this.maxPreloadSize, this.firstStartPlayBufferTime, this.nextStartPlayBufferTime, this.overlayKey, this.overlayIv, this.extInfoMap, this.enableRenderProcess, this.preferredResolution, this.mediaType, this.encryptedMp4Level, this.preferAudioTrack);
        }

        public void setAutoRotate(@Nullable Boolean bool) {
            this.autoRotate = bool;
        }

        public void setCacheMp4ExtName(@Nullable String str) {
            this.cacheMp4ExtName = str;
        }

        public void setConnectRetryCount(@Nullable Long l) {
            this.connectRetryCount = l;
        }

        public void setConnectRetryInterval(@Nullable Long l) {
            this.connectRetryInterval = l;
        }

        public void setEnableAccurateSeek(@Nullable Boolean bool) {
            this.enableAccurateSeek = bool;
        }

        public void setEnableRenderProcess(@Nullable Boolean bool) {
            this.enableRenderProcess = bool;
        }

        public void setEncryptedMp4Level(@Nullable Long l) {
            this.encryptedMp4Level = l;
        }

        public void setExtInfoMap(@Nullable Map<String, Object> map) {
            this.extInfoMap = map;
        }

        public void setFirstStartPlayBufferTime(@Nullable Long l) {
            this.firstStartPlayBufferTime = l;
        }

        public void setHeaders(@Nullable Map<String, String> map) {
            this.headers = map;
        }

        public void setMaxBufferSize(@Nullable Double d) {
            this.maxBufferSize = d;
        }

        public void setMaxPreloadSize(@Nullable Double d) {
            this.maxPreloadSize = d;
        }

        public void setMediaType(@Nullable Long l) {
            this.mediaType = l;
        }

        public void setNextStartPlayBufferTime(@Nullable Long l) {
            this.nextStartPlayBufferTime = l;
        }

        public void setOverlayIv(@Nullable String str) {
            this.overlayIv = str;
        }

        public void setOverlayKey(@Nullable String str) {
            this.overlayKey = str;
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setPlayerType(@Nullable Long l) {
            this.playerType = l;
        }

        public void setPreferAudioTrack(@Nullable String str) {
            this.preferAudioTrack = str;
        }

        public void setPreferredResolution(@Nullable Long l) {
            this.preferredResolution = l;
        }

        public void setProgressInterval(@Nullable Long l) {
            this.progressInterval = l;
        }

        public void setSmoothSwitchBitrate(@Nullable Boolean bool) {
            this.smoothSwitchBitrate = bool;
        }

        public void setTimeout(@Nullable Long l) {
            this.timeout = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(23);
            arrayList.add(this.playerId);
            arrayList.add(this.connectRetryCount);
            arrayList.add(this.connectRetryInterval);
            arrayList.add(this.timeout);
            arrayList.add(this.playerType);
            arrayList.add(this.headers);
            arrayList.add(this.enableAccurateSeek);
            arrayList.add(this.autoRotate);
            arrayList.add(this.smoothSwitchBitrate);
            arrayList.add(this.cacheMp4ExtName);
            arrayList.add(this.progressInterval);
            arrayList.add(this.maxBufferSize);
            arrayList.add(this.maxPreloadSize);
            arrayList.add(this.firstStartPlayBufferTime);
            arrayList.add(this.nextStartPlayBufferTime);
            arrayList.add(this.overlayKey);
            arrayList.add(this.overlayIv);
            arrayList.add(this.extInfoMap);
            arrayList.add(this.enableRenderProcess);
            arrayList.add(this.preferredResolution);
            arrayList.add(this.mediaType);
            arrayList.add(this.encryptedMp4Level);
            arrayList.add(this.preferAudioTrack);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class FlutterError extends RuntimeException {
        public final String code;
        public final Object details;

        public FlutterError(@NonNull String str, @Nullable String str2, @Nullable Object obj) {
            super(str2);
            this.code = str;
            this.details = obj;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class IntMsg {
        @Nullable
        private Long value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long value;

            @NonNull
            public IntMsg build() {
                IntMsg intMsg = new IntMsg();
                intMsg.setValue(this.value);
                return intMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable Long l) {
                this.value = l;
                return this;
            }
        }

        @NonNull
        public static IntMsg fromList(@NonNull ArrayList<Object> arrayList) {
            IntMsg intMsg = new IntMsg();
            intMsg.setValue((Long) arrayList.get(0));
            return intMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && IntMsg.class == obj.getClass()) {
                return Objects.equals(this.value, ((IntMsg) obj).value);
            }
            return false;
        }

        @Nullable
        public Long getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.value);
        }

        public void setValue(@Nullable Long l) {
            this.value = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class IntPlayerMsg {
        @Nullable
        private Long playerId;
        @Nullable
        private Long value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long playerId;
            @Nullable
            private Long value;

            @NonNull
            public IntPlayerMsg build() {
                IntPlayerMsg intPlayerMsg = new IntPlayerMsg();
                intPlayerMsg.setPlayerId(this.playerId);
                intPlayerMsg.setValue(this.value);
                return intPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable Long l) {
                this.value = l;
                return this;
            }
        }

        @NonNull
        public static IntPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            IntPlayerMsg intPlayerMsg = new IntPlayerMsg();
            intPlayerMsg.setPlayerId((Long) arrayList.get(0));
            intPlayerMsg.setValue((Long) arrayList.get(1));
            return intPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && IntPlayerMsg.class == obj.getClass()) {
                IntPlayerMsg intPlayerMsg = (IntPlayerMsg) obj;
                if (Objects.equals(this.playerId, intPlayerMsg.playerId) && Objects.equals(this.value, intPlayerMsg.value)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public Long getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.value);
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setValue(@Nullable Long l) {
            this.value = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.playerId);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class LicenseMsg {
        @Nullable
        private String licenseKey;
        @Nullable
        private String licenseUrl;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String licenseKey;
            @Nullable
            private String licenseUrl;

            @NonNull
            public LicenseMsg build() {
                LicenseMsg licenseMsg = new LicenseMsg();
                licenseMsg.setLicenseUrl(this.licenseUrl);
                licenseMsg.setLicenseKey(this.licenseKey);
                return licenseMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setLicenseKey(@Nullable String str) {
                this.licenseKey = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setLicenseUrl(@Nullable String str) {
                this.licenseUrl = str;
                return this;
            }
        }

        @NonNull
        public static LicenseMsg fromList(@NonNull ArrayList<Object> arrayList) {
            LicenseMsg licenseMsg = new LicenseMsg();
            licenseMsg.setLicenseUrl((String) arrayList.get(0));
            licenseMsg.setLicenseKey((String) arrayList.get(1));
            return licenseMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && LicenseMsg.class == obj.getClass()) {
                LicenseMsg licenseMsg = (LicenseMsg) obj;
                if (Objects.equals(this.licenseUrl, licenseMsg.licenseUrl) && Objects.equals(this.licenseKey, licenseMsg.licenseKey)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getLicenseKey() {
            return this.licenseKey;
        }

        @Nullable
        public String getLicenseUrl() {
            return this.licenseUrl;
        }

        public int hashCode() {
            return Objects.hash(this.licenseUrl, this.licenseKey);
        }

        public void setLicenseKey(@Nullable String str) {
            this.licenseKey = str;
        }

        public void setLicenseUrl(@Nullable String str) {
            this.licenseUrl = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.licenseUrl);
            arrayList.add(this.licenseKey);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class ListMsg {
        @Nullable
        private List<Object> value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private List<Object> value;

            @NonNull
            public ListMsg build() {
                ListMsg listMsg = new ListMsg();
                listMsg.setValue(this.value);
                return listMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable List<Object> list) {
                this.value = list;
                return this;
            }
        }

        @NonNull
        public static ListMsg fromList(@NonNull ArrayList<Object> arrayList) {
            ListMsg listMsg = new ListMsg();
            listMsg.setValue((List) arrayList.get(0));
            return listMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ListMsg.class == obj.getClass()) {
                return Objects.equals(this.value, ((ListMsg) obj).value);
            }
            return false;
        }

        @Nullable
        public List<Object> getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.value);
        }

        public void setValue(@Nullable List<Object> list) {
            this.value = list;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class MapMsg {
        @Nullable
        private Map<String, String> map;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Map<String, String> map;

            @NonNull
            public MapMsg build() {
                MapMsg mapMsg = new MapMsg();
                mapMsg.setMap(this.map);
                return mapMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMap(@Nullable Map<String, String> map) {
                this.map = map;
                return this;
            }
        }

        @NonNull
        public static MapMsg fromList(@NonNull ArrayList<Object> arrayList) {
            MapMsg mapMsg = new MapMsg();
            mapMsg.setMap((Map) arrayList.get(0));
            return mapMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && MapMsg.class == obj.getClass()) {
                return Objects.equals(this.map, ((MapMsg) obj).map);
            }
            return false;
        }

        @Nullable
        public Map<String, String> getMap() {
            return this.map;
        }

        public int hashCode() {
            return Objects.hash(this.map);
        }

        public void setMap(@Nullable Map<String, String> map) {
            this.map = map;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.map);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface NullableResult<T> {
        void error(@NonNull Throwable th);

        void success(@Nullable T t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class PigeonCodec extends StandardMessageCodec {
        public static final PigeonCodec INSTANCE = new PigeonCodec();

        private PigeonCodec() {
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b, @NonNull ByteBuffer byteBuffer) {
            switch (b) {
                case -127:
                    return PlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -126:
                    return LicenseMsg.fromList((ArrayList) readValue(byteBuffer));
                case -125:
                    return TXPlayInfoParamsPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -124:
                    return TXPlayerDrmMsg.fromList((ArrayList) readValue(byteBuffer));
                case -123:
                    return PipParamsPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -122:
                    return StringListPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -121:
                    return BoolPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -120:
                    return StringPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -119:
                    return DoublePlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -118:
                    return IntPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -117:
                    return FTXVodPlayConfigPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -116:
                    return FTXLivePlayConfigPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -115:
                    return TXVodDownloadMediaMsg.fromList((ArrayList) readValue(byteBuffer));
                case -114:
                    return TXDownloadListMsg.fromList((ArrayList) readValue(byteBuffer));
                case -113:
                    return UInt8ListMsg.fromList((ArrayList) readValue(byteBuffer));
                case -112:
                    return ListMsg.fromList((ArrayList) readValue(byteBuffer));
                case -111:
                    return BoolMsg.fromList((ArrayList) readValue(byteBuffer));
                case -110:
                    return IntMsg.fromList((ArrayList) readValue(byteBuffer));
                case -109:
                    return StringMsg.fromList((ArrayList) readValue(byteBuffer));
                case PlaybackException.ERROR_CODE_SETUP_REQUIRED /* -108 */:
                    return CachePathMsg.fromList((ArrayList) readValue(byteBuffer));
                case PlaybackException.ERROR_CODE_SKIP_LIMIT_REACHED /* -107 */:
                    return DoubleMsg.fromList((ArrayList) readValue(byteBuffer));
                case PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION /* -106 */:
                    return PreLoadMsg.fromList((ArrayList) readValue(byteBuffer));
                case PlaybackException.ERROR_CODE_PARENTAL_CONTROL_RESTRICTED /* -105 */:
                    return PreLoadInfoMsg.fromList((ArrayList) readValue(byteBuffer));
                case -104:
                    return MapMsg.fromList((ArrayList) readValue(byteBuffer));
                case -103:
                    return SubTitlePlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case -102:
                    return SubTitleRenderModelPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                case FTXEvent.ERROR_PIP_LOWER_VERSION /* -101 */:
                    return StringOptionPlayerMsg.fromList((ArrayList) readValue(byteBuffer));
                default:
                    return super.readValueOfType(b, byteBuffer);
            }
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(@NonNull ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            if (obj instanceof PlayerMsg) {
                byteArrayOutputStream.write(129);
                writeValue(byteArrayOutputStream, ((PlayerMsg) obj).toList());
            } else if (obj instanceof LicenseMsg) {
                byteArrayOutputStream.write(130);
                writeValue(byteArrayOutputStream, ((LicenseMsg) obj).toList());
            } else if (obj instanceof TXPlayInfoParamsPlayerMsg) {
                byteArrayOutputStream.write(131);
                writeValue(byteArrayOutputStream, ((TXPlayInfoParamsPlayerMsg) obj).toList());
            } else if (obj instanceof TXPlayerDrmMsg) {
                byteArrayOutputStream.write(132);
                writeValue(byteArrayOutputStream, ((TXPlayerDrmMsg) obj).toList());
            } else if (obj instanceof PipParamsPlayerMsg) {
                byteArrayOutputStream.write(133);
                writeValue(byteArrayOutputStream, ((PipParamsPlayerMsg) obj).toList());
            } else if (obj instanceof StringListPlayerMsg) {
                byteArrayOutputStream.write(134);
                writeValue(byteArrayOutputStream, ((StringListPlayerMsg) obj).toList());
            } else if (obj instanceof BoolPlayerMsg) {
                byteArrayOutputStream.write(135);
                writeValue(byteArrayOutputStream, ((BoolPlayerMsg) obj).toList());
            } else if (obj instanceof StringPlayerMsg) {
                byteArrayOutputStream.write(136);
                writeValue(byteArrayOutputStream, ((StringPlayerMsg) obj).toList());
            } else if (obj instanceof DoublePlayerMsg) {
                byteArrayOutputStream.write(137);
                writeValue(byteArrayOutputStream, ((DoublePlayerMsg) obj).toList());
            } else if (obj instanceof IntPlayerMsg) {
                byteArrayOutputStream.write(138);
                writeValue(byteArrayOutputStream, ((IntPlayerMsg) obj).toList());
            } else if (obj instanceof FTXVodPlayConfigPlayerMsg) {
                byteArrayOutputStream.write(139);
                writeValue(byteArrayOutputStream, ((FTXVodPlayConfigPlayerMsg) obj).toList());
            } else if (obj instanceof FTXLivePlayConfigPlayerMsg) {
                byteArrayOutputStream.write(TPOptionalID.OPTION_ID_BEFORE_OBJECT_JITTER_BUFFER_CONFIG);
                writeValue(byteArrayOutputStream, ((FTXLivePlayConfigPlayerMsg) obj).toList());
            } else if (obj instanceof TXVodDownloadMediaMsg) {
                byteArrayOutputStream.write(TPOptionalID.OPTION_ID_BEFORE_QUEUE_INT_SPECIAL_SEI_TYPES_CALLBACK);
                writeValue(byteArrayOutputStream, ((TXVodDownloadMediaMsg) obj).toList());
            } else if (obj instanceof TXDownloadListMsg) {
                byteArrayOutputStream.write(TPOptionalID.OPTION_ID_BEFORE_LONG_SEEK_AV_PTS_ALIGN_MAX_THRESHOLD_MS);
                writeValue(byteArrayOutputStream, ((TXDownloadListMsg) obj).toList());
            } else if (obj instanceof UInt8ListMsg) {
                byteArrayOutputStream.write(143);
                writeValue(byteArrayOutputStream, ((UInt8ListMsg) obj).toList());
            } else if (obj instanceof ListMsg) {
                byteArrayOutputStream.write(144);
                writeValue(byteArrayOutputStream, ((ListMsg) obj).toList());
            } else if (obj instanceof BoolMsg) {
                byteArrayOutputStream.write(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT);
                writeValue(byteArrayOutputStream, ((BoolMsg) obj).toList());
            } else if (obj instanceof IntMsg) {
                byteArrayOutputStream.write(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS);
                writeValue(byteArrayOutputStream, ((IntMsg) obj).toList());
            } else if (obj instanceof StringMsg) {
                byteArrayOutputStream.write(147);
                writeValue(byteArrayOutputStream, ((StringMsg) obj).toList());
            } else if (obj instanceof CachePathMsg) {
                byteArrayOutputStream.write(148);
                writeValue(byteArrayOutputStream, ((CachePathMsg) obj).toList());
            } else if (obj instanceof DoubleMsg) {
                byteArrayOutputStream.write(TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_HLS_AV_SEPARATE_TIMESTAMP_CALCULATOR_FIX_LOGIC);
                writeValue(byteArrayOutputStream, ((DoubleMsg) obj).toList());
            } else if (obj instanceof PreLoadMsg) {
                byteArrayOutputStream.write(150);
                writeValue(byteArrayOutputStream, ((PreLoadMsg) obj).toList());
            } else if (obj instanceof PreLoadInfoMsg) {
                byteArrayOutputStream.write(151);
                writeValue(byteArrayOutputStream, ((PreLoadInfoMsg) obj).toList());
            } else if (obj instanceof MapMsg) {
                byteArrayOutputStream.write(152);
                writeValue(byteArrayOutputStream, ((MapMsg) obj).toList());
            } else if (obj instanceof SubTitlePlayerMsg) {
                byteArrayOutputStream.write(ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS);
                writeValue(byteArrayOutputStream, ((SubTitlePlayerMsg) obj).toList());
            } else if (obj instanceof SubTitleRenderModelPlayerMsg) {
                byteArrayOutputStream.write(154);
                writeValue(byteArrayOutputStream, ((SubTitleRenderModelPlayerMsg) obj).toList());
            } else if (obj instanceof StringOptionPlayerMsg) {
                byteArrayOutputStream.write(ModuleDescriptor.MODULE_VERSION);
                writeValue(byteArrayOutputStream, ((StringOptionPlayerMsg) obj).toList());
            } else {
                super.writeValue(byteArrayOutputStream, obj);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class PipParamsPlayerMsg {
        @Nullable
        private String backIconForAndroid;
        @Nullable
        private String forwardIconForAndroid;
        @Nullable
        private String pauseIconForAndroid;
        @Nullable
        private String playIconForAndroid;
        @Nullable
        private Long playerId;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String backIconForAndroid;
            @Nullable
            private String forwardIconForAndroid;
            @Nullable
            private String pauseIconForAndroid;
            @Nullable
            private String playIconForAndroid;
            @Nullable
            private Long playerId;

            @NonNull
            public PipParamsPlayerMsg build() {
                PipParamsPlayerMsg pipParamsPlayerMsg = new PipParamsPlayerMsg();
                pipParamsPlayerMsg.setPlayerId(this.playerId);
                pipParamsPlayerMsg.setBackIconForAndroid(this.backIconForAndroid);
                pipParamsPlayerMsg.setPlayIconForAndroid(this.playIconForAndroid);
                pipParamsPlayerMsg.setPauseIconForAndroid(this.pauseIconForAndroid);
                pipParamsPlayerMsg.setForwardIconForAndroid(this.forwardIconForAndroid);
                return pipParamsPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setBackIconForAndroid(@Nullable String str) {
                this.backIconForAndroid = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setForwardIconForAndroid(@Nullable String str) {
                this.forwardIconForAndroid = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPauseIconForAndroid(@Nullable String str) {
                this.pauseIconForAndroid = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayIconForAndroid(@Nullable String str) {
                this.playIconForAndroid = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }
        }

        @NonNull
        public static PipParamsPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            PipParamsPlayerMsg pipParamsPlayerMsg = new PipParamsPlayerMsg();
            pipParamsPlayerMsg.setPlayerId((Long) arrayList.get(0));
            pipParamsPlayerMsg.setBackIconForAndroid((String) arrayList.get(1));
            pipParamsPlayerMsg.setPlayIconForAndroid((String) arrayList.get(2));
            pipParamsPlayerMsg.setPauseIconForAndroid((String) arrayList.get(3));
            pipParamsPlayerMsg.setForwardIconForAndroid((String) arrayList.get(4));
            return pipParamsPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PipParamsPlayerMsg.class == obj.getClass()) {
                PipParamsPlayerMsg pipParamsPlayerMsg = (PipParamsPlayerMsg) obj;
                if (Objects.equals(this.playerId, pipParamsPlayerMsg.playerId) && Objects.equals(this.backIconForAndroid, pipParamsPlayerMsg.backIconForAndroid) && Objects.equals(this.playIconForAndroid, pipParamsPlayerMsg.playIconForAndroid) && Objects.equals(this.pauseIconForAndroid, pipParamsPlayerMsg.pauseIconForAndroid) && Objects.equals(this.forwardIconForAndroid, pipParamsPlayerMsg.forwardIconForAndroid)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getBackIconForAndroid() {
            return this.backIconForAndroid;
        }

        @Nullable
        public String getForwardIconForAndroid() {
            return this.forwardIconForAndroid;
        }

        @Nullable
        public String getPauseIconForAndroid() {
            return this.pauseIconForAndroid;
        }

        @Nullable
        public String getPlayIconForAndroid() {
            return this.playIconForAndroid;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.backIconForAndroid, this.playIconForAndroid, this.pauseIconForAndroid, this.forwardIconForAndroid);
        }

        public void setBackIconForAndroid(@Nullable String str) {
            this.backIconForAndroid = str;
        }

        public void setForwardIconForAndroid(@Nullable String str) {
            this.forwardIconForAndroid = str;
        }

        public void setPauseIconForAndroid(@Nullable String str) {
            this.pauseIconForAndroid = str;
        }

        public void setPlayIconForAndroid(@Nullable String str) {
            this.playIconForAndroid = str;
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(5);
            arrayList.add(this.playerId);
            arrayList.add(this.backIconForAndroid);
            arrayList.add(this.playIconForAndroid);
            arrayList.add(this.pauseIconForAndroid);
            arrayList.add(this.forwardIconForAndroid);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class PlayerMsg {
        @Nullable
        private Long playerId;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long playerId;

            @NonNull
            public PlayerMsg build() {
                PlayerMsg playerMsg = new PlayerMsg();
                playerMsg.setPlayerId(this.playerId);
                return playerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }
        }

        @NonNull
        public static PlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            PlayerMsg playerMsg = new PlayerMsg();
            playerMsg.setPlayerId((Long) arrayList.get(0));
            return playerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PlayerMsg.class == obj.getClass()) {
                return Objects.equals(this.playerId, ((PlayerMsg) obj).playerId);
            }
            return false;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        public int hashCode() {
            return Objects.hash(this.playerId);
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.playerId);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class PreLoadInfoMsg {
        @Nullable
        private Long appId;
        @Nullable
        private String fileId;
        @Nullable
        private Map<String, String> httpHeader;
        @Nullable
        private String pSign;
        @Nullable
        private String playUrl;
        @Nullable
        private Long preferredResolution;
        @Nullable
        private Double preloadSizeMB;
        @Nullable
        private Long tmpPreloadTaskId;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long appId;
            @Nullable
            private String fileId;
            @Nullable
            private Map<String, String> httpHeader;
            @Nullable
            private String pSign;
            @Nullable
            private String playUrl;
            @Nullable
            private Long preferredResolution;
            @Nullable
            private Double preloadSizeMB;
            @Nullable
            private Long tmpPreloadTaskId;

            @NonNull
            public PreLoadInfoMsg build() {
                PreLoadInfoMsg preLoadInfoMsg = new PreLoadInfoMsg();
                preLoadInfoMsg.setAppId(this.appId);
                preLoadInfoMsg.setFileId(this.fileId);
                preLoadInfoMsg.setPSign(this.pSign);
                preLoadInfoMsg.setPlayUrl(this.playUrl);
                preLoadInfoMsg.setPreloadSizeMB(this.preloadSizeMB);
                preLoadInfoMsg.setPreferredResolution(this.preferredResolution);
                preLoadInfoMsg.setTmpPreloadTaskId(this.tmpPreloadTaskId);
                preLoadInfoMsg.setHttpHeader(this.httpHeader);
                return preLoadInfoMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAppId(@Nullable Long l) {
                this.appId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFileId(@Nullable String str) {
                this.fileId = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setHttpHeader(@Nullable Map<String, String> map) {
                this.httpHeader = map;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPSign(@Nullable String str) {
                this.pSign = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayUrl(@Nullable String str) {
                this.playUrl = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPreferredResolution(@Nullable Long l) {
                this.preferredResolution = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPreloadSizeMB(@Nullable Double d) {
                this.preloadSizeMB = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setTmpPreloadTaskId(@Nullable Long l) {
                this.tmpPreloadTaskId = l;
                return this;
            }
        }

        @NonNull
        public static PreLoadInfoMsg fromList(@NonNull ArrayList<Object> arrayList) {
            PreLoadInfoMsg preLoadInfoMsg = new PreLoadInfoMsg();
            preLoadInfoMsg.setAppId((Long) arrayList.get(0));
            preLoadInfoMsg.setFileId((String) arrayList.get(1));
            preLoadInfoMsg.setPSign((String) arrayList.get(2));
            preLoadInfoMsg.setPlayUrl((String) arrayList.get(3));
            preLoadInfoMsg.setPreloadSizeMB((Double) arrayList.get(4));
            preLoadInfoMsg.setPreferredResolution((Long) arrayList.get(5));
            preLoadInfoMsg.setTmpPreloadTaskId((Long) arrayList.get(6));
            preLoadInfoMsg.setHttpHeader((Map) arrayList.get(7));
            return preLoadInfoMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PreLoadInfoMsg.class == obj.getClass()) {
                PreLoadInfoMsg preLoadInfoMsg = (PreLoadInfoMsg) obj;
                if (Objects.equals(this.appId, preLoadInfoMsg.appId) && Objects.equals(this.fileId, preLoadInfoMsg.fileId) && Objects.equals(this.pSign, preLoadInfoMsg.pSign) && Objects.equals(this.playUrl, preLoadInfoMsg.playUrl) && Objects.equals(this.preloadSizeMB, preLoadInfoMsg.preloadSizeMB) && Objects.equals(this.preferredResolution, preLoadInfoMsg.preferredResolution) && Objects.equals(this.tmpPreloadTaskId, preLoadInfoMsg.tmpPreloadTaskId) && Objects.equals(this.httpHeader, preLoadInfoMsg.httpHeader)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getAppId() {
            return this.appId;
        }

        @Nullable
        public String getFileId() {
            return this.fileId;
        }

        @Nullable
        public Map<String, String> getHttpHeader() {
            return this.httpHeader;
        }

        @Nullable
        public String getPSign() {
            return this.pSign;
        }

        @Nullable
        public String getPlayUrl() {
            return this.playUrl;
        }

        @Nullable
        public Long getPreferredResolution() {
            return this.preferredResolution;
        }

        @Nullable
        public Double getPreloadSizeMB() {
            return this.preloadSizeMB;
        }

        @Nullable
        public Long getTmpPreloadTaskId() {
            return this.tmpPreloadTaskId;
        }

        public int hashCode() {
            return Objects.hash(this.appId, this.fileId, this.pSign, this.playUrl, this.preloadSizeMB, this.preferredResolution, this.tmpPreloadTaskId, this.httpHeader);
        }

        public void setAppId(@Nullable Long l) {
            this.appId = l;
        }

        public void setFileId(@Nullable String str) {
            this.fileId = str;
        }

        public void setHttpHeader(@Nullable Map<String, String> map) {
            this.httpHeader = map;
        }

        public void setPSign(@Nullable String str) {
            this.pSign = str;
        }

        public void setPlayUrl(@Nullable String str) {
            this.playUrl = str;
        }

        public void setPreferredResolution(@Nullable Long l) {
            this.preferredResolution = l;
        }

        public void setPreloadSizeMB(@Nullable Double d) {
            this.preloadSizeMB = d;
        }

        public void setTmpPreloadTaskId(@Nullable Long l) {
            this.tmpPreloadTaskId = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(8);
            arrayList.add(this.appId);
            arrayList.add(this.fileId);
            arrayList.add(this.pSign);
            arrayList.add(this.playUrl);
            arrayList.add(this.preloadSizeMB);
            arrayList.add(this.preferredResolution);
            arrayList.add(this.tmpPreloadTaskId);
            arrayList.add(this.httpHeader);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class PreLoadMsg {
        @Nullable
        private String playUrl;
        @Nullable
        private Long preferredResolution;
        @Nullable
        private Double preloadSizeMB;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String playUrl;
            @Nullable
            private Long preferredResolution;
            @Nullable
            private Double preloadSizeMB;

            @NonNull
            public PreLoadMsg build() {
                PreLoadMsg preLoadMsg = new PreLoadMsg();
                preLoadMsg.setPlayUrl(this.playUrl);
                preLoadMsg.setPreloadSizeMB(this.preloadSizeMB);
                preLoadMsg.setPreferredResolution(this.preferredResolution);
                return preLoadMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayUrl(@Nullable String str) {
                this.playUrl = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPreferredResolution(@Nullable Long l) {
                this.preferredResolution = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPreloadSizeMB(@Nullable Double d) {
                this.preloadSizeMB = d;
                return this;
            }
        }

        @NonNull
        public static PreLoadMsg fromList(@NonNull ArrayList<Object> arrayList) {
            PreLoadMsg preLoadMsg = new PreLoadMsg();
            preLoadMsg.setPlayUrl((String) arrayList.get(0));
            preLoadMsg.setPreloadSizeMB((Double) arrayList.get(1));
            preLoadMsg.setPreferredResolution((Long) arrayList.get(2));
            return preLoadMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PreLoadMsg.class == obj.getClass()) {
                PreLoadMsg preLoadMsg = (PreLoadMsg) obj;
                if (Objects.equals(this.playUrl, preLoadMsg.playUrl) && Objects.equals(this.preloadSizeMB, preLoadMsg.preloadSizeMB) && Objects.equals(this.preferredResolution, preLoadMsg.preferredResolution)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getPlayUrl() {
            return this.playUrl;
        }

        @Nullable
        public Long getPreferredResolution() {
            return this.preferredResolution;
        }

        @Nullable
        public Double getPreloadSizeMB() {
            return this.preloadSizeMB;
        }

        public int hashCode() {
            return Objects.hash(this.playUrl, this.preloadSizeMB, this.preferredResolution);
        }

        public void setPlayUrl(@Nullable String str) {
            this.playUrl = str;
        }

        public void setPreferredResolution(@Nullable Long l) {
            this.preferredResolution = l;
        }

        public void setPreloadSizeMB(@Nullable Double d) {
            this.preloadSizeMB = d;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.playUrl);
            arrayList.add(this.preloadSizeMB);
            arrayList.add(this.preferredResolution);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface Result<T> {
        void error(@NonNull Throwable th);

        void success(@NonNull T t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class StringListPlayerMsg {
        @Nullable
        private List<String> imageUrls;
        @Nullable
        private Long playerId;
        @Nullable
        private String vvtUrl;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private List<String> imageUrls;
            @Nullable
            private Long playerId;
            @Nullable
            private String vvtUrl;

            @NonNull
            public StringListPlayerMsg build() {
                StringListPlayerMsg stringListPlayerMsg = new StringListPlayerMsg();
                stringListPlayerMsg.setPlayerId(this.playerId);
                stringListPlayerMsg.setVvtUrl(this.vvtUrl);
                stringListPlayerMsg.setImageUrls(this.imageUrls);
                return stringListPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setImageUrls(@Nullable List<String> list) {
                this.imageUrls = list;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setVvtUrl(@Nullable String str) {
                this.vvtUrl = str;
                return this;
            }
        }

        @NonNull
        public static StringListPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            StringListPlayerMsg stringListPlayerMsg = new StringListPlayerMsg();
            stringListPlayerMsg.setPlayerId((Long) arrayList.get(0));
            stringListPlayerMsg.setVvtUrl((String) arrayList.get(1));
            stringListPlayerMsg.setImageUrls((List) arrayList.get(2));
            return stringListPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && StringListPlayerMsg.class == obj.getClass()) {
                StringListPlayerMsg stringListPlayerMsg = (StringListPlayerMsg) obj;
                if (Objects.equals(this.playerId, stringListPlayerMsg.playerId) && Objects.equals(this.vvtUrl, stringListPlayerMsg.vvtUrl) && Objects.equals(this.imageUrls, stringListPlayerMsg.imageUrls)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public List<String> getImageUrls() {
            return this.imageUrls;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public String getVvtUrl() {
            return this.vvtUrl;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.vvtUrl, this.imageUrls);
        }

        public void setImageUrls(@Nullable List<String> list) {
            this.imageUrls = list;
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setVvtUrl(@Nullable String str) {
            this.vvtUrl = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.playerId);
            arrayList.add(this.vvtUrl);
            arrayList.add(this.imageUrls);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class StringMsg {
        @Nullable
        private String value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String value;

            @NonNull
            public StringMsg build() {
                StringMsg stringMsg = new StringMsg();
                stringMsg.setValue(this.value);
                return stringMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable String str) {
                this.value = str;
                return this;
            }
        }

        @NonNull
        public static StringMsg fromList(@NonNull ArrayList<Object> arrayList) {
            StringMsg stringMsg = new StringMsg();
            stringMsg.setValue((String) arrayList.get(0));
            return stringMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && StringMsg.class == obj.getClass()) {
                return Objects.equals(this.value, ((StringMsg) obj).value);
            }
            return false;
        }

        @Nullable
        public String getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.value);
        }

        public void setValue(@Nullable String str) {
            this.value = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class StringOptionPlayerMsg {
        @Nullable
        private String key;
        @Nullable
        private Long playerId;
        @Nullable
        private List<Object> value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String key;
            @Nullable
            private Long playerId;
            @Nullable
            private List<Object> value;

            @NonNull
            public StringOptionPlayerMsg build() {
                StringOptionPlayerMsg stringOptionPlayerMsg = new StringOptionPlayerMsg();
                stringOptionPlayerMsg.setKey(this.key);
                stringOptionPlayerMsg.setValue(this.value);
                stringOptionPlayerMsg.setPlayerId(this.playerId);
                return stringOptionPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setKey(@Nullable String str) {
                this.key = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable List<Object> list) {
                this.value = list;
                return this;
            }
        }

        @NonNull
        public static StringOptionPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            StringOptionPlayerMsg stringOptionPlayerMsg = new StringOptionPlayerMsg();
            stringOptionPlayerMsg.setKey((String) arrayList.get(0));
            stringOptionPlayerMsg.setValue((List) arrayList.get(1));
            stringOptionPlayerMsg.setPlayerId((Long) arrayList.get(2));
            return stringOptionPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && StringOptionPlayerMsg.class == obj.getClass()) {
                StringOptionPlayerMsg stringOptionPlayerMsg = (StringOptionPlayerMsg) obj;
                if (Objects.equals(this.key, stringOptionPlayerMsg.key) && Objects.equals(this.value, stringOptionPlayerMsg.value) && Objects.equals(this.playerId, stringOptionPlayerMsg.playerId)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getKey() {
            return this.key;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public List<Object> getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.key, this.value, this.playerId);
        }

        public void setKey(@Nullable String str) {
            this.key = str;
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setValue(@Nullable List<Object> list) {
            this.value = list;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.key);
            arrayList.add(this.value);
            arrayList.add(this.playerId);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class StringPlayerMsg {
        @Nullable
        private Long playerId;
        @Nullable
        private String value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long playerId;
            @Nullable
            private String value;

            @NonNull
            public StringPlayerMsg build() {
                StringPlayerMsg stringPlayerMsg = new StringPlayerMsg();
                stringPlayerMsg.setPlayerId(this.playerId);
                stringPlayerMsg.setValue(this.value);
                return stringPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable String str) {
                this.value = str;
                return this;
            }
        }

        @NonNull
        public static StringPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            StringPlayerMsg stringPlayerMsg = new StringPlayerMsg();
            stringPlayerMsg.setPlayerId((Long) arrayList.get(0));
            stringPlayerMsg.setValue((String) arrayList.get(1));
            return stringPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && StringPlayerMsg.class == obj.getClass()) {
                StringPlayerMsg stringPlayerMsg = (StringPlayerMsg) obj;
                if (Objects.equals(this.playerId, stringPlayerMsg.playerId) && Objects.equals(this.value, stringPlayerMsg.value)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public String getValue() {
            return this.value;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.value);
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setValue(@Nullable String str) {
            this.value = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.playerId);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class SubTitlePlayerMsg {
        @Nullable
        private String mimeType;
        @NonNull
        private String name;
        @Nullable
        private Long playerId;
        @NonNull
        private String url;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String mimeType;
            @Nullable
            private String name;
            @Nullable
            private Long playerId;
            @Nullable
            private String url;

            @NonNull
            public SubTitlePlayerMsg build() {
                SubTitlePlayerMsg subTitlePlayerMsg = new SubTitlePlayerMsg();
                subTitlePlayerMsg.setUrl(this.url);
                subTitlePlayerMsg.setName(this.name);
                subTitlePlayerMsg.setMimeType(this.mimeType);
                subTitlePlayerMsg.setPlayerId(this.playerId);
                return subTitlePlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMimeType(@Nullable String str) {
                this.mimeType = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setName(@NonNull String str) {
                this.name = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setUrl(@NonNull String str) {
                this.url = str;
                return this;
            }
        }

        @NonNull
        public static SubTitlePlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            SubTitlePlayerMsg subTitlePlayerMsg = new SubTitlePlayerMsg();
            subTitlePlayerMsg.setUrl((String) arrayList.get(0));
            subTitlePlayerMsg.setName((String) arrayList.get(1));
            subTitlePlayerMsg.setMimeType((String) arrayList.get(2));
            subTitlePlayerMsg.setPlayerId((Long) arrayList.get(3));
            return subTitlePlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SubTitlePlayerMsg.class == obj.getClass()) {
                SubTitlePlayerMsg subTitlePlayerMsg = (SubTitlePlayerMsg) obj;
                if (this.url.equals(subTitlePlayerMsg.url) && this.name.equals(subTitlePlayerMsg.name) && Objects.equals(this.mimeType, subTitlePlayerMsg.mimeType) && Objects.equals(this.playerId, subTitlePlayerMsg.playerId)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getMimeType() {
            return this.mimeType;
        }

        @NonNull
        public String getName() {
            return this.name;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @NonNull
        public String getUrl() {
            return this.url;
        }

        public int hashCode() {
            return Objects.hash(this.url, this.name, this.mimeType, this.playerId);
        }

        public void setMimeType(@Nullable String str) {
            this.mimeType = str;
        }

        public void setName(@NonNull String str) {
            if (str != null) {
                this.name = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"name\" is null.");
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setUrl(@NonNull String str) {
            if (str != null) {
                this.url = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"url\" is null.");
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(4);
            arrayList.add(this.url);
            arrayList.add(this.name);
            arrayList.add(this.mimeType);
            arrayList.add(this.playerId);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class SubTitleRenderModelPlayerMsg {
        @Nullable
        private Long canvasHeight;
        @Nullable
        private Long canvasWidth;
        @Nullable
        private Double endMargin;
        @Nullable
        private String familyName;
        @Nullable
        private Long fontColor;
        @Nullable
        private Double fontScale;
        @Nullable
        private Double fontSize;
        @Nullable
        private Boolean isBondFontStyle;
        @Nullable
        private Double lineSpace;
        @Nullable
        private Long outlineColor;
        @Nullable
        private Double outlineWidth;
        @Nullable
        private Long playerId;
        @Nullable
        private Double startMargin;
        @Nullable
        private Double verticalMargin;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long canvasHeight;
            @Nullable
            private Long canvasWidth;
            @Nullable
            private Double endMargin;
            @Nullable
            private String familyName;
            @Nullable
            private Long fontColor;
            @Nullable
            private Double fontScale;
            @Nullable
            private Double fontSize;
            @Nullable
            private Boolean isBondFontStyle;
            @Nullable
            private Double lineSpace;
            @Nullable
            private Long outlineColor;
            @Nullable
            private Double outlineWidth;
            @Nullable
            private Long playerId;
            @Nullable
            private Double startMargin;
            @Nullable
            private Double verticalMargin;

            @NonNull
            public SubTitleRenderModelPlayerMsg build() {
                SubTitleRenderModelPlayerMsg subTitleRenderModelPlayerMsg = new SubTitleRenderModelPlayerMsg();
                subTitleRenderModelPlayerMsg.setCanvasWidth(this.canvasWidth);
                subTitleRenderModelPlayerMsg.setCanvasHeight(this.canvasHeight);
                subTitleRenderModelPlayerMsg.setFamilyName(this.familyName);
                subTitleRenderModelPlayerMsg.setFontSize(this.fontSize);
                subTitleRenderModelPlayerMsg.setFontScale(this.fontScale);
                subTitleRenderModelPlayerMsg.setFontColor(this.fontColor);
                subTitleRenderModelPlayerMsg.setIsBondFontStyle(this.isBondFontStyle);
                subTitleRenderModelPlayerMsg.setOutlineWidth(this.outlineWidth);
                subTitleRenderModelPlayerMsg.setOutlineColor(this.outlineColor);
                subTitleRenderModelPlayerMsg.setLineSpace(this.lineSpace);
                subTitleRenderModelPlayerMsg.setStartMargin(this.startMargin);
                subTitleRenderModelPlayerMsg.setEndMargin(this.endMargin);
                subTitleRenderModelPlayerMsg.setVerticalMargin(this.verticalMargin);
                subTitleRenderModelPlayerMsg.setPlayerId(this.playerId);
                return subTitleRenderModelPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setCanvasHeight(@Nullable Long l) {
                this.canvasHeight = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setCanvasWidth(@Nullable Long l) {
                this.canvasWidth = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setEndMargin(@Nullable Double d) {
                this.endMargin = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFamilyName(@Nullable String str) {
                this.familyName = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFontColor(@Nullable Long l) {
                this.fontColor = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFontScale(@Nullable Double d) {
                this.fontScale = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFontSize(@Nullable Double d) {
                this.fontSize = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setIsBondFontStyle(@Nullable Boolean bool) {
                this.isBondFontStyle = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setLineSpace(@Nullable Double d) {
                this.lineSpace = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setOutlineColor(@Nullable Long l) {
                this.outlineColor = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setOutlineWidth(@Nullable Double d) {
                this.outlineWidth = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setStartMargin(@Nullable Double d) {
                this.startMargin = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setVerticalMargin(@Nullable Double d) {
                this.verticalMargin = d;
                return this;
            }
        }

        @NonNull
        public static SubTitleRenderModelPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            SubTitleRenderModelPlayerMsg subTitleRenderModelPlayerMsg = new SubTitleRenderModelPlayerMsg();
            subTitleRenderModelPlayerMsg.setCanvasWidth((Long) arrayList.get(0));
            subTitleRenderModelPlayerMsg.setCanvasHeight((Long) arrayList.get(1));
            subTitleRenderModelPlayerMsg.setFamilyName((String) arrayList.get(2));
            subTitleRenderModelPlayerMsg.setFontSize((Double) arrayList.get(3));
            subTitleRenderModelPlayerMsg.setFontScale((Double) arrayList.get(4));
            subTitleRenderModelPlayerMsg.setFontColor((Long) arrayList.get(5));
            subTitleRenderModelPlayerMsg.setIsBondFontStyle((Boolean) arrayList.get(6));
            subTitleRenderModelPlayerMsg.setOutlineWidth((Double) arrayList.get(7));
            subTitleRenderModelPlayerMsg.setOutlineColor((Long) arrayList.get(8));
            subTitleRenderModelPlayerMsg.setLineSpace((Double) arrayList.get(9));
            subTitleRenderModelPlayerMsg.setStartMargin((Double) arrayList.get(10));
            subTitleRenderModelPlayerMsg.setEndMargin((Double) arrayList.get(11));
            subTitleRenderModelPlayerMsg.setVerticalMargin((Double) arrayList.get(12));
            subTitleRenderModelPlayerMsg.setPlayerId((Long) arrayList.get(13));
            return subTitleRenderModelPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SubTitleRenderModelPlayerMsg.class == obj.getClass()) {
                SubTitleRenderModelPlayerMsg subTitleRenderModelPlayerMsg = (SubTitleRenderModelPlayerMsg) obj;
                if (Objects.equals(this.canvasWidth, subTitleRenderModelPlayerMsg.canvasWidth) && Objects.equals(this.canvasHeight, subTitleRenderModelPlayerMsg.canvasHeight) && Objects.equals(this.familyName, subTitleRenderModelPlayerMsg.familyName) && Objects.equals(this.fontSize, subTitleRenderModelPlayerMsg.fontSize) && Objects.equals(this.fontScale, subTitleRenderModelPlayerMsg.fontScale) && Objects.equals(this.fontColor, subTitleRenderModelPlayerMsg.fontColor) && Objects.equals(this.isBondFontStyle, subTitleRenderModelPlayerMsg.isBondFontStyle) && Objects.equals(this.outlineWidth, subTitleRenderModelPlayerMsg.outlineWidth) && Objects.equals(this.outlineColor, subTitleRenderModelPlayerMsg.outlineColor) && Objects.equals(this.lineSpace, subTitleRenderModelPlayerMsg.lineSpace) && Objects.equals(this.startMargin, subTitleRenderModelPlayerMsg.startMargin) && Objects.equals(this.endMargin, subTitleRenderModelPlayerMsg.endMargin) && Objects.equals(this.verticalMargin, subTitleRenderModelPlayerMsg.verticalMargin) && Objects.equals(this.playerId, subTitleRenderModelPlayerMsg.playerId)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getCanvasHeight() {
            return this.canvasHeight;
        }

        @Nullable
        public Long getCanvasWidth() {
            return this.canvasWidth;
        }

        @Nullable
        public Double getEndMargin() {
            return this.endMargin;
        }

        @Nullable
        public String getFamilyName() {
            return this.familyName;
        }

        @Nullable
        public Long getFontColor() {
            return this.fontColor;
        }

        @Nullable
        public Double getFontScale() {
            return this.fontScale;
        }

        @Nullable
        public Double getFontSize() {
            return this.fontSize;
        }

        @Nullable
        public Boolean getIsBondFontStyle() {
            return this.isBondFontStyle;
        }

        @Nullable
        public Double getLineSpace() {
            return this.lineSpace;
        }

        @Nullable
        public Long getOutlineColor() {
            return this.outlineColor;
        }

        @Nullable
        public Double getOutlineWidth() {
            return this.outlineWidth;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public Double getStartMargin() {
            return this.startMargin;
        }

        @Nullable
        public Double getVerticalMargin() {
            return this.verticalMargin;
        }

        public int hashCode() {
            return Objects.hash(this.canvasWidth, this.canvasHeight, this.familyName, this.fontSize, this.fontScale, this.fontColor, this.isBondFontStyle, this.outlineWidth, this.outlineColor, this.lineSpace, this.startMargin, this.endMargin, this.verticalMargin, this.playerId);
        }

        public void setCanvasHeight(@Nullable Long l) {
            this.canvasHeight = l;
        }

        public void setCanvasWidth(@Nullable Long l) {
            this.canvasWidth = l;
        }

        public void setEndMargin(@Nullable Double d) {
            this.endMargin = d;
        }

        public void setFamilyName(@Nullable String str) {
            this.familyName = str;
        }

        public void setFontColor(@Nullable Long l) {
            this.fontColor = l;
        }

        public void setFontScale(@Nullable Double d) {
            this.fontScale = d;
        }

        public void setFontSize(@Nullable Double d) {
            this.fontSize = d;
        }

        public void setIsBondFontStyle(@Nullable Boolean bool) {
            this.isBondFontStyle = bool;
        }

        public void setLineSpace(@Nullable Double d) {
            this.lineSpace = d;
        }

        public void setOutlineColor(@Nullable Long l) {
            this.outlineColor = l;
        }

        public void setOutlineWidth(@Nullable Double d) {
            this.outlineWidth = d;
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setStartMargin(@Nullable Double d) {
            this.startMargin = d;
        }

        public void setVerticalMargin(@Nullable Double d) {
            this.verticalMargin = d;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(14);
            arrayList.add(this.canvasWidth);
            arrayList.add(this.canvasHeight);
            arrayList.add(this.familyName);
            arrayList.add(this.fontSize);
            arrayList.add(this.fontScale);
            arrayList.add(this.fontColor);
            arrayList.add(this.isBondFontStyle);
            arrayList.add(this.outlineWidth);
            arrayList.add(this.outlineColor);
            arrayList.add(this.lineSpace);
            arrayList.add(this.startMargin);
            arrayList.add(this.endMargin);
            arrayList.add(this.verticalMargin);
            arrayList.add(this.playerId);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TXDownloadFlutterAPI {
        @NonNull
        private final BinaryMessenger binaryMessenger;
        private final String messageChannelSuffix;

        public TXDownloadFlutterAPI(@NonNull BinaryMessenger binaryMessenger) {
            this(binaryMessenger, "");
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        @NonNull
        public static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        public void onDownloadEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXDownloadFlutterAPI.onDownloadEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXDownloadFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public void onPreDownloadEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXDownloadFlutterAPI.onPreDownloadEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXDownloadFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public TXDownloadFlutterAPI(@NonNull BinaryMessenger binaryMessenger, @NonNull String str) {
            String str2;
            this.binaryMessenger = binaryMessenger;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            this.messageChannelSuffix = str2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class TXDownloadListMsg {
        @Nullable
        private List<TXVodDownloadMediaMsg> infoList;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private List<TXVodDownloadMediaMsg> infoList;

            @NonNull
            public TXDownloadListMsg build() {
                TXDownloadListMsg tXDownloadListMsg = new TXDownloadListMsg();
                tXDownloadListMsg.setInfoList(this.infoList);
                return tXDownloadListMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setInfoList(@Nullable List<TXVodDownloadMediaMsg> list) {
                this.infoList = list;
                return this;
            }
        }

        @NonNull
        public static TXDownloadListMsg fromList(@NonNull ArrayList<Object> arrayList) {
            TXDownloadListMsg tXDownloadListMsg = new TXDownloadListMsg();
            tXDownloadListMsg.setInfoList((List) arrayList.get(0));
            return tXDownloadListMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && TXDownloadListMsg.class == obj.getClass()) {
                return Objects.equals(this.infoList, ((TXDownloadListMsg) obj).infoList);
            }
            return false;
        }

        @Nullable
        public List<TXVodDownloadMediaMsg> getInfoList() {
            return this.infoList;
        }

        public int hashCode() {
            return Objects.hash(this.infoList);
        }

        public void setInfoList(@Nullable List<TXVodDownloadMediaMsg> list) {
            this.infoList = list;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.infoList);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TXFlutterDownloadApi {
        @NonNull
        BoolMsg deleteDownloadMediaInfo(@NonNull TXVodDownloadMediaMsg tXVodDownloadMediaMsg);

        @NonNull
        TXVodDownloadMediaMsg getDownloadInfo(@NonNull TXVodDownloadMediaMsg tXVodDownloadMediaMsg);

        @NonNull
        TXDownloadListMsg getDownloadList();

        void resumeDownload(@NonNull TXVodDownloadMediaMsg tXVodDownloadMediaMsg);

        void setDownloadHeaders(@NonNull MapMsg mapMsg);

        void startDownload(@NonNull TXVodDownloadMediaMsg tXVodDownloadMediaMsg);

        @NonNull
        IntMsg startPreLoad(@NonNull PreLoadMsg preLoadMsg);

        void startPreLoadByParams(@NonNull PreLoadInfoMsg preLoadInfoMsg);

        void stopDownload(@NonNull TXVodDownloadMediaMsg tXVodDownloadMediaMsg);

        void stopPreLoad(@NonNull IntMsg intMsg);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TXFlutterLivePlayerApi {
        @NonNull
        BoolMsg enableHardwareDecode(@NonNull BoolPlayerMsg boolPlayerMsg);

        @NonNull
        Long enablePictureInPicture(@NonNull BoolPlayerMsg boolPlayerMsg);

        @NonNull
        Long enableReceiveSeiMessage(@NonNull PlayerMsg playerMsg, @NonNull Boolean bool, @NonNull Long l);

        @NonNull
        IntMsg enterPictureInPictureMode(@NonNull PipParamsPlayerMsg pipParamsPlayerMsg);

        void exitPictureInPictureMode(@NonNull PlayerMsg playerMsg);

        @NonNull
        ListMsg getSupportedBitrate(@NonNull PlayerMsg playerMsg);

        @NonNull
        IntMsg initialize(@NonNull BoolPlayerMsg boolPlayerMsg);

        @NonNull
        BoolMsg isPlaying(@NonNull PlayerMsg playerMsg);

        void pause(@NonNull PlayerMsg playerMsg);

        void resume(@NonNull PlayerMsg playerMsg);

        void setAppID(@NonNull StringPlayerMsg stringPlayerMsg);

        @NonNull
        Long setCacheParams(@NonNull PlayerMsg playerMsg, @NonNull Double d, @NonNull Double d2);

        void setConfig(@NonNull FTXLivePlayConfigPlayerMsg fTXLivePlayConfigPlayerMsg);

        void setLiveMode(@NonNull IntPlayerMsg intPlayerMsg);

        void setMute(@NonNull BoolPlayerMsg boolPlayerMsg);

        void setPlayerView(@NonNull Long l);

        @NonNull
        Long setProperty(@NonNull PlayerMsg playerMsg, @NonNull String str, @NonNull Object obj);

        void setRenderMode(@NonNull Long l);

        void setVolume(@NonNull IntPlayerMsg intPlayerMsg);

        void showDebugView(@NonNull PlayerMsg playerMsg, @NonNull Boolean bool);

        @NonNull
        BoolMsg startLivePlay(@NonNull StringPlayerMsg stringPlayerMsg);

        @NonNull
        BoolMsg stop(@NonNull BoolPlayerMsg boolPlayerMsg);

        @NonNull
        IntMsg switchStream(@NonNull StringPlayerMsg stringPlayerMsg);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TXFlutterNativeAPI {
        void abandonAudioFocus();

        @NonNull
        DoubleMsg getBrightness();

        @NonNull
        DoubleMsg getSysBrightness();

        @NonNull
        DoubleMsg getSystemVolume();

        @NonNull
        IntMsg isDeviceSupportPip();

        void registerSysBrightness(@NonNull BoolMsg boolMsg);

        void requestAudioFocus();

        void restorePageBrightness();

        void setBrightness(@NonNull DoubleMsg doubleMsg);

        void setSystemVolume(@NonNull DoubleMsg doubleMsg);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TXFlutterSuperPlayerPluginAPI {
        @NonNull
        PlayerMsg createLivePlayer(@NonNull Boolean bool);

        @NonNull
        PlayerMsg createVodPlayer(@NonNull Boolean bool);

        @NonNull
        BoolMsg getIOSSupportPIP();

        @NonNull
        StringMsg getLiteAVSDKVersion();

        @NonNull
        StringMsg getPlatformVersion();

        void releasePlayer(@NonNull PlayerMsg playerMsg);

        void setConsoleEnabled(@NonNull BoolMsg boolMsg);

        void setDrmProvisionEnv(@NonNull Long l);

        @NonNull
        BoolMsg setGlobalCacheFolderCustomPath(@NonNull CachePathMsg cachePathMsg);

        @NonNull
        BoolMsg setGlobalCacheFolderPath(@NonNull StringMsg stringMsg);

        @NonNull
        IntMsg setGlobalEnv(@NonNull StringMsg stringMsg);

        void setGlobalLicense(@NonNull LicenseMsg licenseMsg);

        void setGlobalMaxCacheSize(@NonNull IntMsg intMsg);

        void setLicenseFlexibleValid(@NonNull BoolMsg boolMsg);

        void setLogLevel(@NonNull IntMsg intMsg);

        void setUserId(@NonNull StringMsg stringMsg);

        @NonNull
        BoolMsg startVideoOrientationService();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface TXFlutterVodPlayerApi {
        void addSubtitleSource(@NonNull SubTitlePlayerMsg subTitlePlayerMsg);

        @NonNull
        BoolMsg autoEnterPictureInPictureMode(@NonNull BoolPlayerMsg boolPlayerMsg);

        void deselectTrack(@NonNull IntPlayerMsg intPlayerMsg);

        @NonNull
        BoolMsg enableHardwareDecode(@NonNull BoolPlayerMsg boolPlayerMsg);

        @NonNull
        IntMsg enterPictureInPictureMode(@NonNull PipParamsPlayerMsg pipParamsPlayerMsg);

        @NonNull
        BoolMsg exitPictureInPictureMode(@NonNull PlayerMsg playerMsg);

        @NonNull
        ListMsg getAudioTrackInfo(@NonNull PlayerMsg playerMsg);

        @NonNull
        IntMsg getBitrateIndex(@NonNull PlayerMsg playerMsg);

        @NonNull
        DoubleMsg getBufferDuration(@NonNull PlayerMsg playerMsg);

        @NonNull
        DoubleMsg getCurrentPlaybackTime(@NonNull PlayerMsg playerMsg);

        @NonNull
        DoubleMsg getDuration(@NonNull PlayerMsg playerMsg);

        @NonNull
        IntMsg getHeight(@NonNull PlayerMsg playerMsg);

        @NonNull
        UInt8ListMsg getImageSprite(@NonNull DoublePlayerMsg doublePlayerMsg);

        @NonNull
        DoubleMsg getPlayableDuration(@NonNull PlayerMsg playerMsg);

        @NonNull
        ListMsg getSubtitleTrackInfo(@NonNull PlayerMsg playerMsg);

        @NonNull
        ListMsg getSupportedBitrate(@NonNull PlayerMsg playerMsg);

        @NonNull
        IntMsg getWidth(@NonNull PlayerMsg playerMsg);

        void initImageSprite(@NonNull StringListPlayerMsg stringListPlayerMsg);

        @NonNull
        IntMsg initialize(@NonNull BoolPlayerMsg boolPlayerMsg);

        @NonNull
        BoolMsg isInPIPMode(@NonNull PlayerMsg playerMsg);

        @NonNull
        BoolMsg isLoop(@NonNull PlayerMsg playerMsg);

        @NonNull
        BoolMsg isPlaying(@NonNull PlayerMsg playerMsg);

        void pause(@NonNull PlayerMsg playerMsg);

        void reDraw();

        void resume(@NonNull PlayerMsg playerMsg);

        void seek(@NonNull DoublePlayerMsg doublePlayerMsg);

        void seekToPdtTime(@NonNull IntPlayerMsg intPlayerMsg);

        void selectTrack(@NonNull IntPlayerMsg intPlayerMsg);

        void setAudioPlayOutVolume(@NonNull IntPlayerMsg intPlayerMsg);

        void setAutoPlay(@NonNull BoolPlayerMsg boolPlayerMsg);

        void setBitrateIndex(@NonNull IntPlayerMsg intPlayerMsg);

        void setConfig(@NonNull FTXVodPlayConfigPlayerMsg fTXVodPlayConfigPlayerMsg);

        void setLoop(@NonNull BoolPlayerMsg boolPlayerMsg);

        void setMute(@NonNull BoolPlayerMsg boolPlayerMsg);

        void setPlayerView(@NonNull Long l);

        void setRate(@NonNull DoublePlayerMsg doublePlayerMsg);

        void setRenderMode(@NonNull Long l);

        @NonNull
        BoolMsg setRequestAudioFocus(@NonNull BoolPlayerMsg boolPlayerMsg);

        void setStartTime(@NonNull DoublePlayerMsg doublePlayerMsg);

        void setStringOption(@NonNull StringOptionPlayerMsg stringOptionPlayerMsg);

        void setSubtitleStyle(@NonNull SubTitleRenderModelPlayerMsg subTitleRenderModelPlayerMsg);

        void setToken(@NonNull StringPlayerMsg stringPlayerMsg);

        @NonNull
        IntMsg startPlayDrm(@NonNull TXPlayerDrmMsg tXPlayerDrmMsg);

        @NonNull
        BoolMsg startVodPlay(@NonNull StringPlayerMsg stringPlayerMsg);

        void startVodPlayWithParams(@NonNull TXPlayInfoParamsPlayerMsg tXPlayInfoParamsPlayerMsg);

        @NonNull
        BoolMsg stop(@NonNull BoolPlayerMsg boolPlayerMsg);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TXLivePlayerFlutterAPI {
        @NonNull
        private final BinaryMessenger binaryMessenger;
        private final String messageChannelSuffix;

        public TXLivePlayerFlutterAPI(@NonNull BinaryMessenger binaryMessenger) {
            this(binaryMessenger, "");
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        @NonNull
        public static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        public void onNetEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXLivePlayerFlutterAPI.onNetEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.QQOOOOOOOOO
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXLivePlayerFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public void onPlayerEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXLivePlayerFlutterAPI.onPlayerEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.QQOOOOOOOO
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXLivePlayerFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public TXLivePlayerFlutterAPI(@NonNull BinaryMessenger binaryMessenger, @NonNull String str) {
            String str2;
            this.binaryMessenger = binaryMessenger;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            this.messageChannelSuffix = str2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TXPipFlutterAPI {
        @NonNull
        private final BinaryMessenger binaryMessenger;
        private final String messageChannelSuffix;

        public TXPipFlutterAPI(@NonNull BinaryMessenger binaryMessenger) {
            this(binaryMessenger, "");
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        @NonNull
        public static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        public void onPipEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXPipFlutterAPI.onPipEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.QQOOOOOOO
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXPipFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public TXPipFlutterAPI(@NonNull BinaryMessenger binaryMessenger, @NonNull String str) {
            String str2;
            this.binaryMessenger = binaryMessenger;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            this.messageChannelSuffix = str2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class TXPlayInfoParamsPlayerMsg {
        @Nullable
        private Long appId;
        @Nullable
        private String fileId;
        @Nullable
        private Long playerId;
        @Nullable
        private String psign;
        @Nullable
        private String url;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long appId;
            @Nullable
            private String fileId;
            @Nullable
            private Long playerId;
            @Nullable
            private String psign;
            @Nullable
            private String url;

            @NonNull
            public TXPlayInfoParamsPlayerMsg build() {
                TXPlayInfoParamsPlayerMsg tXPlayInfoParamsPlayerMsg = new TXPlayInfoParamsPlayerMsg();
                tXPlayInfoParamsPlayerMsg.setPlayerId(this.playerId);
                tXPlayInfoParamsPlayerMsg.setAppId(this.appId);
                tXPlayInfoParamsPlayerMsg.setFileId(this.fileId);
                tXPlayInfoParamsPlayerMsg.setPsign(this.psign);
                tXPlayInfoParamsPlayerMsg.setUrl(this.url);
                return tXPlayInfoParamsPlayerMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAppId(@Nullable Long l) {
                this.appId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFileId(@Nullable String str) {
                this.fileId = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPsign(@Nullable String str) {
                this.psign = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setUrl(@Nullable String str) {
                this.url = str;
                return this;
            }
        }

        @NonNull
        public static TXPlayInfoParamsPlayerMsg fromList(@NonNull ArrayList<Object> arrayList) {
            TXPlayInfoParamsPlayerMsg tXPlayInfoParamsPlayerMsg = new TXPlayInfoParamsPlayerMsg();
            tXPlayInfoParamsPlayerMsg.setPlayerId((Long) arrayList.get(0));
            tXPlayInfoParamsPlayerMsg.setAppId((Long) arrayList.get(1));
            tXPlayInfoParamsPlayerMsg.setFileId((String) arrayList.get(2));
            tXPlayInfoParamsPlayerMsg.setPsign((String) arrayList.get(3));
            tXPlayInfoParamsPlayerMsg.setUrl((String) arrayList.get(4));
            return tXPlayInfoParamsPlayerMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && TXPlayInfoParamsPlayerMsg.class == obj.getClass()) {
                TXPlayInfoParamsPlayerMsg tXPlayInfoParamsPlayerMsg = (TXPlayInfoParamsPlayerMsg) obj;
                if (Objects.equals(this.playerId, tXPlayInfoParamsPlayerMsg.playerId) && Objects.equals(this.appId, tXPlayInfoParamsPlayerMsg.appId) && Objects.equals(this.fileId, tXPlayInfoParamsPlayerMsg.fileId) && Objects.equals(this.psign, tXPlayInfoParamsPlayerMsg.psign) && Objects.equals(this.url, tXPlayInfoParamsPlayerMsg.url)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getAppId() {
            return this.appId;
        }

        @Nullable
        public String getFileId() {
            return this.fileId;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        @Nullable
        public String getPsign() {
            return this.psign;
        }

        @Nullable
        public String getUrl() {
            return this.url;
        }

        public int hashCode() {
            return Objects.hash(this.playerId, this.appId, this.fileId, this.psign, this.url);
        }

        public void setAppId(@Nullable Long l) {
            this.appId = l;
        }

        public void setFileId(@Nullable String str) {
            this.fileId = str;
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        public void setPsign(@Nullable String str) {
            this.psign = str;
        }

        public void setUrl(@Nullable String str) {
            this.url = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(5);
            arrayList.add(this.playerId);
            arrayList.add(this.appId);
            arrayList.add(this.fileId);
            arrayList.add(this.psign);
            arrayList.add(this.url);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class TXPlayerDrmMsg {
        @Nullable
        private String deviceCertificateUrl;
        @NonNull
        private String licenseUrl;
        @NonNull
        private String playUrl;
        @Nullable
        private Long playerId;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String deviceCertificateUrl;
            @Nullable
            private String licenseUrl;
            @Nullable
            private String playUrl;
            @Nullable
            private Long playerId;

            @NonNull
            public TXPlayerDrmMsg build() {
                TXPlayerDrmMsg tXPlayerDrmMsg = new TXPlayerDrmMsg();
                tXPlayerDrmMsg.setLicenseUrl(this.licenseUrl);
                tXPlayerDrmMsg.setPlayUrl(this.playUrl);
                tXPlayerDrmMsg.setPlayerId(this.playerId);
                tXPlayerDrmMsg.setDeviceCertificateUrl(this.deviceCertificateUrl);
                return tXPlayerDrmMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setDeviceCertificateUrl(@Nullable String str) {
                this.deviceCertificateUrl = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setLicenseUrl(@NonNull String str) {
                this.licenseUrl = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayUrl(@NonNull String str) {
                this.playUrl = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayerId(@Nullable Long l) {
                this.playerId = l;
                return this;
            }
        }

        @NonNull
        public static TXPlayerDrmMsg fromList(@NonNull ArrayList<Object> arrayList) {
            TXPlayerDrmMsg tXPlayerDrmMsg = new TXPlayerDrmMsg();
            tXPlayerDrmMsg.setLicenseUrl((String) arrayList.get(0));
            tXPlayerDrmMsg.setPlayUrl((String) arrayList.get(1));
            tXPlayerDrmMsg.setPlayerId((Long) arrayList.get(2));
            tXPlayerDrmMsg.setDeviceCertificateUrl((String) arrayList.get(3));
            return tXPlayerDrmMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && TXPlayerDrmMsg.class == obj.getClass()) {
                TXPlayerDrmMsg tXPlayerDrmMsg = (TXPlayerDrmMsg) obj;
                if (this.licenseUrl.equals(tXPlayerDrmMsg.licenseUrl) && this.playUrl.equals(tXPlayerDrmMsg.playUrl) && Objects.equals(this.playerId, tXPlayerDrmMsg.playerId) && Objects.equals(this.deviceCertificateUrl, tXPlayerDrmMsg.deviceCertificateUrl)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public String getDeviceCertificateUrl() {
            return this.deviceCertificateUrl;
        }

        @NonNull
        public String getLicenseUrl() {
            return this.licenseUrl;
        }

        @NonNull
        public String getPlayUrl() {
            return this.playUrl;
        }

        @Nullable
        public Long getPlayerId() {
            return this.playerId;
        }

        public int hashCode() {
            return Objects.hash(this.licenseUrl, this.playUrl, this.playerId, this.deviceCertificateUrl);
        }

        public void setDeviceCertificateUrl(@Nullable String str) {
            this.deviceCertificateUrl = str;
        }

        public void setLicenseUrl(@NonNull String str) {
            if (str != null) {
                this.licenseUrl = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"licenseUrl\" is null.");
        }

        public void setPlayUrl(@NonNull String str) {
            if (str != null) {
                this.playUrl = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"playUrl\" is null.");
        }

        public void setPlayerId(@Nullable Long l) {
            this.playerId = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(4);
            arrayList.add(this.licenseUrl);
            arrayList.add(this.playUrl);
            arrayList.add(this.playerId);
            arrayList.add(this.deviceCertificateUrl);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TXPluginFlutterAPI {
        @NonNull
        private final BinaryMessenger binaryMessenger;
        private final String messageChannelSuffix;

        public TXPluginFlutterAPI(@NonNull BinaryMessenger binaryMessenger) {
            this(binaryMessenger, "");
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        @NonNull
        public static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        public void onNativeEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXPluginFlutterAPI.onNativeEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.QQOOOOO
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXPluginFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public void onSDKListener(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXPluginFlutterAPI.onSDKListener" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.QQOOOOOO
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXPluginFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public TXPluginFlutterAPI(@NonNull BinaryMessenger binaryMessenger, @NonNull String str) {
            String str2;
            this.binaryMessenger = binaryMessenger;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            this.messageChannelSuffix = str2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class TXVodDownloadMediaMsg {
        @Nullable
        private Long appId;
        @Nullable
        private Long downloadSize;
        @Nullable
        private Long downloadState;
        @Nullable
        private Long duration;
        @Nullable
        private String fileId;
        @Nullable
        private Boolean isResourceBroken;
        @Nullable
        private String pSign;
        @Nullable
        private String playPath;
        @Nullable
        private Long playableDuration;
        @Nullable
        private Double progress;
        @Nullable
        private Long quality;
        @Nullable
        private Long size;
        @Nullable
        private Long speed;
        @Nullable
        private String token;
        @Nullable
        private String url;
        @Nullable
        private String userName;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long appId;
            @Nullable
            private Long downloadSize;
            @Nullable
            private Long downloadState;
            @Nullable
            private Long duration;
            @Nullable
            private String fileId;
            @Nullable
            private Boolean isResourceBroken;
            @Nullable
            private String pSign;
            @Nullable
            private String playPath;
            @Nullable
            private Long playableDuration;
            @Nullable
            private Double progress;
            @Nullable
            private Long quality;
            @Nullable
            private Long size;
            @Nullable
            private Long speed;
            @Nullable
            private String token;
            @Nullable
            private String url;
            @Nullable
            private String userName;

            @NonNull
            public TXVodDownloadMediaMsg build() {
                TXVodDownloadMediaMsg tXVodDownloadMediaMsg = new TXVodDownloadMediaMsg();
                tXVodDownloadMediaMsg.setPlayPath(this.playPath);
                tXVodDownloadMediaMsg.setProgress(this.progress);
                tXVodDownloadMediaMsg.setDownloadState(this.downloadState);
                tXVodDownloadMediaMsg.setUserName(this.userName);
                tXVodDownloadMediaMsg.setDuration(this.duration);
                tXVodDownloadMediaMsg.setPlayableDuration(this.playableDuration);
                tXVodDownloadMediaMsg.setSize(this.size);
                tXVodDownloadMediaMsg.setDownloadSize(this.downloadSize);
                tXVodDownloadMediaMsg.setUrl(this.url);
                tXVodDownloadMediaMsg.setAppId(this.appId);
                tXVodDownloadMediaMsg.setFileId(this.fileId);
                tXVodDownloadMediaMsg.setPSign(this.pSign);
                tXVodDownloadMediaMsg.setQuality(this.quality);
                tXVodDownloadMediaMsg.setToken(this.token);
                tXVodDownloadMediaMsg.setSpeed(this.speed);
                tXVodDownloadMediaMsg.setIsResourceBroken(this.isResourceBroken);
                return tXVodDownloadMediaMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAppId(@Nullable Long l) {
                this.appId = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setDownloadSize(@Nullable Long l) {
                this.downloadSize = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setDownloadState(@Nullable Long l) {
                this.downloadState = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setDuration(@Nullable Long l) {
                this.duration = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setFileId(@Nullable String str) {
                this.fileId = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setIsResourceBroken(@Nullable Boolean bool) {
                this.isResourceBroken = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPSign(@Nullable String str) {
                this.pSign = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayPath(@Nullable String str) {
                this.playPath = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPlayableDuration(@Nullable Long l) {
                this.playableDuration = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setProgress(@Nullable Double d) {
                this.progress = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setQuality(@Nullable Long l) {
                this.quality = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setSize(@Nullable Long l) {
                this.size = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setSpeed(@Nullable Long l) {
                this.speed = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setToken(@Nullable String str) {
                this.token = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setUrl(@Nullable String str) {
                this.url = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setUserName(@Nullable String str) {
                this.userName = str;
                return this;
            }
        }

        @NonNull
        public static TXVodDownloadMediaMsg fromList(@NonNull ArrayList<Object> arrayList) {
            TXVodDownloadMediaMsg tXVodDownloadMediaMsg = new TXVodDownloadMediaMsg();
            tXVodDownloadMediaMsg.setPlayPath((String) arrayList.get(0));
            tXVodDownloadMediaMsg.setProgress((Double) arrayList.get(1));
            tXVodDownloadMediaMsg.setDownloadState((Long) arrayList.get(2));
            tXVodDownloadMediaMsg.setUserName((String) arrayList.get(3));
            tXVodDownloadMediaMsg.setDuration((Long) arrayList.get(4));
            tXVodDownloadMediaMsg.setPlayableDuration((Long) arrayList.get(5));
            tXVodDownloadMediaMsg.setSize((Long) arrayList.get(6));
            tXVodDownloadMediaMsg.setDownloadSize((Long) arrayList.get(7));
            tXVodDownloadMediaMsg.setUrl((String) arrayList.get(8));
            tXVodDownloadMediaMsg.setAppId((Long) arrayList.get(9));
            tXVodDownloadMediaMsg.setFileId((String) arrayList.get(10));
            tXVodDownloadMediaMsg.setPSign((String) arrayList.get(11));
            tXVodDownloadMediaMsg.setQuality((Long) arrayList.get(12));
            tXVodDownloadMediaMsg.setToken((String) arrayList.get(13));
            tXVodDownloadMediaMsg.setSpeed((Long) arrayList.get(14));
            tXVodDownloadMediaMsg.setIsResourceBroken((Boolean) arrayList.get(15));
            return tXVodDownloadMediaMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && TXVodDownloadMediaMsg.class == obj.getClass()) {
                TXVodDownloadMediaMsg tXVodDownloadMediaMsg = (TXVodDownloadMediaMsg) obj;
                if (Objects.equals(this.playPath, tXVodDownloadMediaMsg.playPath) && Objects.equals(this.progress, tXVodDownloadMediaMsg.progress) && Objects.equals(this.downloadState, tXVodDownloadMediaMsg.downloadState) && Objects.equals(this.userName, tXVodDownloadMediaMsg.userName) && Objects.equals(this.duration, tXVodDownloadMediaMsg.duration) && Objects.equals(this.playableDuration, tXVodDownloadMediaMsg.playableDuration) && Objects.equals(this.size, tXVodDownloadMediaMsg.size) && Objects.equals(this.downloadSize, tXVodDownloadMediaMsg.downloadSize) && Objects.equals(this.url, tXVodDownloadMediaMsg.url) && Objects.equals(this.appId, tXVodDownloadMediaMsg.appId) && Objects.equals(this.fileId, tXVodDownloadMediaMsg.fileId) && Objects.equals(this.pSign, tXVodDownloadMediaMsg.pSign) && Objects.equals(this.quality, tXVodDownloadMediaMsg.quality) && Objects.equals(this.token, tXVodDownloadMediaMsg.token) && Objects.equals(this.speed, tXVodDownloadMediaMsg.speed) && Objects.equals(this.isResourceBroken, tXVodDownloadMediaMsg.isResourceBroken)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Long getAppId() {
            return this.appId;
        }

        @Nullable
        public Long getDownloadSize() {
            return this.downloadSize;
        }

        @Nullable
        public Long getDownloadState() {
            return this.downloadState;
        }

        @Nullable
        public Long getDuration() {
            return this.duration;
        }

        @Nullable
        public String getFileId() {
            return this.fileId;
        }

        @Nullable
        public Boolean getIsResourceBroken() {
            return this.isResourceBroken;
        }

        @Nullable
        public String getPSign() {
            return this.pSign;
        }

        @Nullable
        public String getPlayPath() {
            return this.playPath;
        }

        @Nullable
        public Long getPlayableDuration() {
            return this.playableDuration;
        }

        @Nullable
        public Double getProgress() {
            return this.progress;
        }

        @Nullable
        public Long getQuality() {
            return this.quality;
        }

        @Nullable
        public Long getSize() {
            return this.size;
        }

        @Nullable
        public Long getSpeed() {
            return this.speed;
        }

        @Nullable
        public String getToken() {
            return this.token;
        }

        @Nullable
        public String getUrl() {
            return this.url;
        }

        @Nullable
        public String getUserName() {
            return this.userName;
        }

        public int hashCode() {
            return Objects.hash(this.playPath, this.progress, this.downloadState, this.userName, this.duration, this.playableDuration, this.size, this.downloadSize, this.url, this.appId, this.fileId, this.pSign, this.quality, this.token, this.speed, this.isResourceBroken);
        }

        public void setAppId(@Nullable Long l) {
            this.appId = l;
        }

        public void setDownloadSize(@Nullable Long l) {
            this.downloadSize = l;
        }

        public void setDownloadState(@Nullable Long l) {
            this.downloadState = l;
        }

        public void setDuration(@Nullable Long l) {
            this.duration = l;
        }

        public void setFileId(@Nullable String str) {
            this.fileId = str;
        }

        public void setIsResourceBroken(@Nullable Boolean bool) {
            this.isResourceBroken = bool;
        }

        public void setPSign(@Nullable String str) {
            this.pSign = str;
        }

        public void setPlayPath(@Nullable String str) {
            this.playPath = str;
        }

        public void setPlayableDuration(@Nullable Long l) {
            this.playableDuration = l;
        }

        public void setProgress(@Nullable Double d) {
            this.progress = d;
        }

        public void setQuality(@Nullable Long l) {
            this.quality = l;
        }

        public void setSize(@Nullable Long l) {
            this.size = l;
        }

        public void setSpeed(@Nullable Long l) {
            this.speed = l;
        }

        public void setToken(@Nullable String str) {
            this.token = str;
        }

        public void setUrl(@Nullable String str) {
            this.url = str;
        }

        public void setUserName(@Nullable String str) {
            this.userName = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(16);
            arrayList.add(this.playPath);
            arrayList.add(this.progress);
            arrayList.add(this.downloadState);
            arrayList.add(this.userName);
            arrayList.add(this.duration);
            arrayList.add(this.playableDuration);
            arrayList.add(this.size);
            arrayList.add(this.downloadSize);
            arrayList.add(this.url);
            arrayList.add(this.appId);
            arrayList.add(this.fileId);
            arrayList.add(this.pSign);
            arrayList.add(this.quality);
            arrayList.add(this.token);
            arrayList.add(this.speed);
            arrayList.add(this.isResourceBroken);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TXVodPlayerFlutterAPI {
        @NonNull
        private final BinaryMessenger binaryMessenger;
        private final String messageChannelSuffix;

        public TXVodPlayerFlutterAPI(@NonNull BinaryMessenger binaryMessenger) {
            this(binaryMessenger, "");
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(VoidResult voidResult, String str, Object obj) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list.size() > 1) {
                    voidResult.error(new FlutterError((String) list.get(0), (String) list.get(1), list.get(2)));
                    return;
                } else {
                    voidResult.success();
                    return;
                }
            }
            voidResult.error(FtxMessages.createConnectionError(str));
        }

        @NonNull
        public static MessageCodec<Object> getCodec() {
            return PigeonCodec.INSTANCE;
        }

        public void onNetEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXVodPlayerFlutterAPI.onNetEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.QQOOOO
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXVodPlayerFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public void onPlayerEvent(@NonNull Map<String, Object> map, @NonNull final VoidResult voidResult) {
            final String str = "dev.flutter.pigeon.super_player.TXVodPlayerFlutterAPI.onPlayerEvent" + this.messageChannelSuffix;
            new BasicMessageChannel(this.binaryMessenger, str, getCodec()).send(new ArrayList(Collections.singletonList(map)), new BasicMessageChannel.Reply() { // from class: com.tencent.vod.flutter.messages.QQOOO
                @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
                public final void reply(Object obj) {
                    FtxMessages.TXVodPlayerFlutterAPI.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FtxMessages.VoidResult.this, str, obj);
                }
            });
        }

        public TXVodPlayerFlutterAPI(@NonNull BinaryMessenger binaryMessenger, @NonNull String str) {
            String str2;
            this.binaryMessenger = binaryMessenger;
            if (str.isEmpty()) {
                str2 = "";
            } else {
                str2 = "." + str;
            }
            this.messageChannelSuffix = str2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class UInt8ListMsg {
        @Nullable
        private byte[] value;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private byte[] value;

            @NonNull
            public UInt8ListMsg build() {
                UInt8ListMsg uInt8ListMsg = new UInt8ListMsg();
                uInt8ListMsg.setValue(this.value);
                return uInt8ListMsg;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setValue(@Nullable byte[] bArr) {
                this.value = bArr;
                return this;
            }
        }

        @NonNull
        public static UInt8ListMsg fromList(@NonNull ArrayList<Object> arrayList) {
            UInt8ListMsg uInt8ListMsg = new UInt8ListMsg();
            uInt8ListMsg.setValue((byte[]) arrayList.get(0));
            return uInt8ListMsg;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && UInt8ListMsg.class == obj.getClass()) {
                return Arrays.equals(this.value, ((UInt8ListMsg) obj).value);
            }
            return false;
        }

        @Nullable
        public byte[] getValue() {
            return this.value;
        }

        public int hashCode() {
            return Arrays.hashCode(this.value);
        }

        public void setValue(@Nullable byte[] bArr) {
            this.value = bArr;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.value);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface VoidResult {
        void error(@NonNull Throwable th);

        void success();
    }

    @NonNull
    public static FlutterError createConnectionError(@NonNull String str) {
        return new FlutterError("channel-error", "Unable to establish connection on channel: " + str + ".", "");
    }

    @NonNull
    public static ArrayList<Object> wrapError(@NonNull Throwable th) {
        ArrayList<Object> arrayList = new ArrayList<>(3);
        if (th instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) th;
            arrayList.add(flutterError.code);
            arrayList.add(flutterError.getMessage());
            arrayList.add(flutterError.details);
            return arrayList;
        }
        arrayList.add(th.toString());
        arrayList.add(th.getClass().getSimpleName());
        arrayList.add("Cause: " + th.getCause() + ", Stacktrace: " + Log.getStackTraceString(th));
        return arrayList;
    }
}
