package com.unity3d.ads.core.data.model;

import com.iab.omid.library.unity3d.adsession.CreativeType;
import com.iab.omid.library.unity3d.adsession.ImpressionType;
import com.iab.omid.library.unity3d.adsession.Owner;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J[\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010#\u001a\u00020\u00032\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\bHÖ\u0001R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014¨\u0006("}, d2 = {"Lcom/unity3d/ads/core/data/model/OmidOptions;", "", "isolateVerificationScripts", "", "impressionOwner", "Lcom/iab/omid/library/unity3d/adsession/Owner;", "videoEventsOwner", "customReferenceData", "", "impressionType", "Lcom/iab/omid/library/unity3d/adsession/ImpressionType;", "creativeType", "Lcom/iab/omid/library/unity3d/adsession/CreativeType;", "mediaEventsOwner", "(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;)V", "getCreativeType", "()Lcom/iab/omid/library/unity3d/adsession/CreativeType;", "getCustomReferenceData", "()Ljava/lang/String;", "getImpressionOwner", "()Lcom/iab/omid/library/unity3d/adsession/Owner;", "getImpressionType", "()Lcom/iab/omid/library/unity3d/adsession/ImpressionType;", "getIsolateVerificationScripts", "()Z", "getMediaEventsOwner", "getVideoEventsOwner", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "", "toString", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class OmidOptions {
    @Nullable
    private final CreativeType creativeType;
    @Nullable
    private final String customReferenceData;
    @Nullable
    private final Owner impressionOwner;
    @Nullable
    private final ImpressionType impressionType;
    private final boolean isolateVerificationScripts;
    @Nullable
    private final Owner mediaEventsOwner;
    @Nullable
    private final Owner videoEventsOwner;

    public OmidOptions() {
        this(false, null, null, null, null, null, null, 127, null);
    }

    public static /* synthetic */ OmidOptions copy$default(OmidOptions omidOptions, boolean z, Owner owner, Owner owner2, String str, ImpressionType impressionType, CreativeType creativeType, Owner owner3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = omidOptions.isolateVerificationScripts;
        }
        if ((i & 2) != 0) {
            owner = omidOptions.impressionOwner;
        }
        if ((i & 4) != 0) {
            owner2 = omidOptions.videoEventsOwner;
        }
        if ((i & 8) != 0) {
            str = omidOptions.customReferenceData;
        }
        if ((i & 16) != 0) {
            impressionType = omidOptions.impressionType;
        }
        if ((i & 32) != 0) {
            creativeType = omidOptions.creativeType;
        }
        if ((i & 64) != 0) {
            owner3 = omidOptions.mediaEventsOwner;
        }
        CreativeType creativeType2 = creativeType;
        Owner owner4 = owner3;
        ImpressionType impressionType2 = impressionType;
        Owner owner5 = owner2;
        return omidOptions.copy(z, owner, owner5, str, impressionType2, creativeType2, owner4);
    }

    public final boolean component1() {
        return this.isolateVerificationScripts;
    }

    @Nullable
    public final Owner component2() {
        return this.impressionOwner;
    }

    @Nullable
    public final Owner component3() {
        return this.videoEventsOwner;
    }

    @Nullable
    public final String component4() {
        return this.customReferenceData;
    }

    @Nullable
    public final ImpressionType component5() {
        return this.impressionType;
    }

    @Nullable
    public final CreativeType component6() {
        return this.creativeType;
    }

    @Nullable
    public final Owner component7() {
        return this.mediaEventsOwner;
    }

    @NotNull
    public final OmidOptions copy(boolean z, @Nullable Owner owner, @Nullable Owner owner2, @Nullable String str, @Nullable ImpressionType impressionType, @Nullable CreativeType creativeType, @Nullable Owner owner3) {
        return new OmidOptions(z, owner, owner2, str, impressionType, creativeType, owner3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OmidOptions)) {
            return false;
        }
        OmidOptions omidOptions = (OmidOptions) obj;
        if (this.isolateVerificationScripts == omidOptions.isolateVerificationScripts && this.impressionOwner == omidOptions.impressionOwner && this.videoEventsOwner == omidOptions.videoEventsOwner && Intrinsics.areEqual(this.customReferenceData, omidOptions.customReferenceData) && this.impressionType == omidOptions.impressionType && this.creativeType == omidOptions.creativeType && this.mediaEventsOwner == omidOptions.mediaEventsOwner) {
            return true;
        }
        return false;
    }

    @Nullable
    public final CreativeType getCreativeType() {
        return this.creativeType;
    }

    @Nullable
    public final String getCustomReferenceData() {
        return this.customReferenceData;
    }

    @Nullable
    public final Owner getImpressionOwner() {
        return this.impressionOwner;
    }

    @Nullable
    public final ImpressionType getImpressionType() {
        return this.impressionType;
    }

    public final boolean getIsolateVerificationScripts() {
        return this.isolateVerificationScripts;
    }

    @Nullable
    public final Owner getMediaEventsOwner() {
        return this.mediaEventsOwner;
    }

    @Nullable
    public final Owner getVideoEventsOwner() {
        return this.videoEventsOwner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        boolean z = this.isolateVerificationScripts;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        Owner owner = this.impressionOwner;
        int i2 = 0;
        if (owner == null) {
            hashCode = 0;
        } else {
            hashCode = owner.hashCode();
        }
        int i3 = (i + hashCode) * 31;
        Owner owner2 = this.videoEventsOwner;
        if (owner2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = owner2.hashCode();
        }
        int i4 = (i3 + hashCode2) * 31;
        String str = this.customReferenceData;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i5 = (i4 + hashCode3) * 31;
        ImpressionType impressionType = this.impressionType;
        if (impressionType == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = impressionType.hashCode();
        }
        int i6 = (i5 + hashCode4) * 31;
        CreativeType creativeType = this.creativeType;
        if (creativeType == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = creativeType.hashCode();
        }
        int i7 = (i6 + hashCode5) * 31;
        Owner owner3 = this.mediaEventsOwner;
        if (owner3 != null) {
            i2 = owner3.hashCode();
        }
        return i7 + i2;
    }

    @NotNull
    public String toString() {
        return "OmidOptions(isolateVerificationScripts=" + this.isolateVerificationScripts + ", impressionOwner=" + this.impressionOwner + ", videoEventsOwner=" + this.videoEventsOwner + ", customReferenceData=" + this.customReferenceData + ", impressionType=" + this.impressionType + ", creativeType=" + this.creativeType + ", mediaEventsOwner=" + this.mediaEventsOwner + ')';
    }

    public OmidOptions(boolean z, @Nullable Owner owner, @Nullable Owner owner2, @Nullable String str, @Nullable ImpressionType impressionType, @Nullable CreativeType creativeType, @Nullable Owner owner3) {
        this.isolateVerificationScripts = z;
        this.impressionOwner = owner;
        this.videoEventsOwner = owner2;
        this.customReferenceData = str;
        this.impressionType = impressionType;
        this.creativeType = creativeType;
        this.mediaEventsOwner = owner3;
    }

    public /* synthetic */ OmidOptions(boolean z, Owner owner, Owner owner2, String str, ImpressionType impressionType, CreativeType creativeType, Owner owner3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Owner owner4;
        CreativeType creativeType2;
        String str2;
        ImpressionType impressionType2;
        Owner owner5;
        Owner owner6;
        OmidOptions omidOptions;
        boolean z2;
        z = (i & 1) != 0 ? false : z;
        owner = (i & 2) != 0 ? null : owner;
        owner2 = (i & 4) != 0 ? null : owner2;
        str = (i & 8) != 0 ? null : str;
        impressionType = (i & 16) != 0 ? null : impressionType;
        creativeType = (i & 32) != 0 ? null : creativeType;
        if ((i & 64) != 0) {
            owner4 = null;
            impressionType2 = impressionType;
            creativeType2 = creativeType;
            owner6 = owner2;
            str2 = str;
            z2 = z;
            owner5 = owner;
            omidOptions = this;
        } else {
            owner4 = owner3;
            creativeType2 = creativeType;
            str2 = str;
            impressionType2 = impressionType;
            owner5 = owner;
            owner6 = owner2;
            omidOptions = this;
            z2 = z;
        }
        new OmidOptions(z2, owner5, owner6, str2, impressionType2, creativeType2, owner4);
    }
}
