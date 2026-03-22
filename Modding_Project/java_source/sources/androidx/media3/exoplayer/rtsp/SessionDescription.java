package androidx.media3.exoplayer.rtsp;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class SessionDescription {
    public static final String ATTR_CONTROL = "control";
    public static final String ATTR_FMTP = "fmtp";
    public static final String ATTR_LENGTH = "length";
    public static final String ATTR_RANGE = "range";
    public static final String ATTR_RTPMAP = "rtpmap";
    public static final String ATTR_TOOL = "tool";
    public static final String ATTR_TYPE = "type";
    public static final String SUPPORTED_SDP_VERSION = "0";
    public final ImmutableMap<String, String> attributes;
    public final int bitrate;
    @Nullable
    public final String connection;
    @Nullable
    public final String emailAddress;
    @Nullable
    public final String key;
    public final ImmutableList<MediaDescription> mediaDescriptionList;
    @Nullable
    public final String origin;
    @Nullable
    public final String phoneNumber;
    @Nullable
    public final String sessionInfo;
    @Nullable
    public final String sessionName;
    @Nullable
    public final String timing;
    @Nullable
    public final Uri uri;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Builder {
        @Nullable
        private String connection;
        @Nullable
        private String emailAddress;
        @Nullable
        private String key;
        @Nullable
        private String origin;
        @Nullable
        private String phoneNumber;
        @Nullable
        private String sessionInfo;
        @Nullable
        private String sessionName;
        @Nullable
        private String timing;
        @Nullable
        private Uri uri;
        private final HashMap<String, String> attributes = new HashMap<>();
        private final ImmutableList.Builder<MediaDescription> mediaDescriptionListBuilder = new ImmutableList.Builder<>();
        private int bitrate = -1;

        @CanIgnoreReturnValue
        public Builder addAttribute(String str, String str2) {
            this.attributes.put(str, str2);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder addMediaDescription(MediaDescription mediaDescription) {
            this.mediaDescriptionListBuilder.add((ImmutableList.Builder<MediaDescription>) mediaDescription);
            return this;
        }

        public SessionDescription build() {
            return new SessionDescription(this);
        }

        @CanIgnoreReturnValue
        public Builder setBitrate(int i) {
            this.bitrate = i;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setConnection(String str) {
            this.connection = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setEmailAddress(String str) {
            this.emailAddress = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setKey(String str) {
            this.key = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setOrigin(String str) {
            this.origin = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setPhoneNumber(String str) {
            this.phoneNumber = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setSessionInfo(String str) {
            this.sessionInfo = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setSessionName(String str) {
            this.sessionName = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setTiming(String str) {
            this.timing = str;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setUri(Uri uri) {
            this.uri = uri;
            return this;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SessionDescription.class == obj.getClass()) {
            SessionDescription sessionDescription = (SessionDescription) obj;
            if (this.bitrate == sessionDescription.bitrate && this.attributes.equals(sessionDescription.attributes) && this.mediaDescriptionList.equals(sessionDescription.mediaDescriptionList) && Util.areEqual(this.origin, sessionDescription.origin) && Util.areEqual(this.sessionName, sessionDescription.sessionName) && Util.areEqual(this.timing, sessionDescription.timing) && Util.areEqual(this.sessionInfo, sessionDescription.sessionInfo) && Util.areEqual(this.uri, sessionDescription.uri) && Util.areEqual(this.emailAddress, sessionDescription.emailAddress) && Util.areEqual(this.phoneNumber, sessionDescription.phoneNumber) && Util.areEqual(this.connection, sessionDescription.connection) && Util.areEqual(this.key, sessionDescription.key)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9 = (((217 + this.attributes.hashCode()) * 31) + this.mediaDescriptionList.hashCode()) * 31;
        String str = this.origin;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode9 + hashCode) * 31;
        String str2 = this.sessionName;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str3 = this.timing;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i4 = (((i3 + hashCode3) * 31) + this.bitrate) * 31;
        String str4 = this.sessionInfo;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i5 = (i4 + hashCode4) * 31;
        Uri uri = this.uri;
        if (uri == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = uri.hashCode();
        }
        int i6 = (i5 + hashCode5) * 31;
        String str5 = this.emailAddress;
        if (str5 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str5.hashCode();
        }
        int i7 = (i6 + hashCode6) * 31;
        String str6 = this.phoneNumber;
        if (str6 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str6.hashCode();
        }
        int i8 = (i7 + hashCode7) * 31;
        String str7 = this.connection;
        if (str7 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = str7.hashCode();
        }
        int i9 = (i8 + hashCode8) * 31;
        String str8 = this.key;
        if (str8 != null) {
            i = str8.hashCode();
        }
        return i9 + i;
    }

    private SessionDescription(Builder builder) {
        this.attributes = ImmutableMap.copyOf((Map) builder.attributes);
        this.mediaDescriptionList = builder.mediaDescriptionListBuilder.build();
        this.sessionName = (String) Util.castNonNull(builder.sessionName);
        this.origin = (String) Util.castNonNull(builder.origin);
        this.timing = (String) Util.castNonNull(builder.timing);
        this.uri = builder.uri;
        this.connection = builder.connection;
        this.bitrate = builder.bitrate;
        this.key = builder.key;
        this.emailAddress = builder.emailAddress;
        this.phoneNumber = builder.phoneNumber;
        this.sessionInfo = builder.sessionInfo;
    }
}
