.class public Lcom/tencent/thumbplayer/tcmedia/api/capability/TPCapability;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addACodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;)Z
    .locals 9
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_AUDIO_DECODER_TYPE;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_AUDIO_CODEC_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getUpperboundSamplerate()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getUpperboundChannels()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getUpperboundBitrate()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLowerboundSamplerate()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLowerboundChannels()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLowerboundBitrate()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getProfileForSet()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLevelForSet()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual/range {v0 .. v8}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->set(IIIIIIII)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapAudioDecoderType;

    .line 42
    .line 43
    invoke-static {p2, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapAudioCodecType;

    .line 48
    .line 49
    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addACodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object p0, v0

    .line 60
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public static addACodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;)Z
    .locals 9
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_AUDIO_DECODER_TYPE;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_AUDIO_CODEC_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getUpperboundSamplerate()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getUpperboundChannels()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getUpperboundBitrate()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLowerboundSamplerate()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLowerboundChannels()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLowerboundBitrate()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getProfileForSet()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPACodecCapabilityForSet;->getLevelForSet()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual/range {v0 .. v8}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;->set(IIIIIIII)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapAudioDecoderType;

    .line 42
    .line 43
    invoke-static {p2, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapAudioCodecType;

    .line 48
    .line 49
    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addACodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPACodecPropertyRange;)Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object p0, v0

    .line 60
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public static addDRMLevel1Blacklist(I)Z
    .locals 0
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_DRM_TYPE;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addDRMLevel1Blacklist(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static addHDRBlackList(ILcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;)Z
    .locals 4
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_HDR_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;

    .line 2
    .line 3
    iget v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->upperboundSystemVersion:I

    .line 4
    .line 5
    iget v2, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->lowerboundSystemVersion:I

    .line 6
    .line 7
    iget v3, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->upperboundPatchVersion:I

    .line 8
    .line 9
    iget p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->lowerboundPatchVersion:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    const-class p1, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapHdrType;

    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addHDRBlackList(ILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public static addHDRVideoDecoderTypeWhiteList(IILcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;)Z
    .locals 4
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_HDR_TYPE;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_DECODER_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;

    .line 2
    .line 3
    iget v1, p2, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->upperboundSystemVersion:I

    .line 4
    .line 5
    iget v2, p2, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->lowerboundSystemVersion:I

    .line 6
    .line 7
    iget v3, p2, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->upperboundPatchVersion:I

    .line 8
    .line 9
    iget p2, p2, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->lowerboundPatchVersion:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput p2, v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;->lowerboundAndroidAPILevel:I

    .line 16
    .line 17
    const/16 p2, 0x3e7

    .line 18
    .line 19
    iput p2, v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;->upperboundAndroidAPILevel:I

    .line 20
    .line 21
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapHdrType;

    .line 22
    .line 23
    invoke-static {p2, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapVideoDecoderType;

    .line 28
    .line 29
    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addHDRVideoDecoderTypeWhiteList(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public static addHDRWhiteList(ILcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;)Z
    .locals 4
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_HDR_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;

    .line 2
    .line 3
    iget v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->upperboundSystemVersion:I

    .line 4
    .line 5
    iget v2, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->lowerboundSystemVersion:I

    .line 6
    .line 7
    iget v3, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->upperboundPatchVersion:I

    .line 8
    .line 9
    iget p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPHDRVersionRange;->lowerboundPatchVersion:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    const-class p1, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapHdrType;

    .line 15
    .line 16
    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addHDRWhiteList(ILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPHdrSupportVersionRange;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public static addVCodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;)Z
    .locals 7
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_DECODER_TYPE;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_CODEC_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getUpperboundWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getUpperboundHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getLowerboundWidth()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getLowerboundHeight()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getProfile()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getLevel()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->set(IIIIII)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapVideoDecoderType;

    .line 34
    .line 35
    invoke-static {p2, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapCodecType;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addVCodecBlacklist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return p0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object p0, v0

    .line 52
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public static addVCodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;)Z
    .locals 7
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_DECODER_TYPE;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_CODEC_TYPE;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getUpperboundWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getUpperboundHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getLowerboundWidth()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getLowerboundHeight()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getProfile()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForSet;->getLevel()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;->set(IIIIII)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapVideoDecoderType;

    .line 34
    .line 35
    invoke-static {p2, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapCodecType;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->addVCodecWhitelist(IILcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPVCodecPropertyRange;)Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return p0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object p0, v0

    .line 52
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public static getDRMCapabilities()[I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/a;->a()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getThumbPlayerVCodecMaxCapability(I)Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;
    .locals 4
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_CODEC_TYPE;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->mDefaultVCodecCapability:Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapCodecType;

    .line 11
    .line 12
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->getVCodecMaxCapability(I)Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->mDefaultVCodecCapability:Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 26
    .line 27
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxLumaSamples:I

    .line 28
    .line 29
    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxProfile:I

    .line 30
    .line 31
    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxLevel:I

    .line 32
    .line 33
    iget p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxFramerateFormaxLumaSamples:I

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;-><init>(IIII)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public static getThumbPlayerVCodecTypeMaxCapability(II)Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;
    .locals 3
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_CODEC_TYPE;
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_DECODER_TYPE;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryLoader;->isLibLoadedAndTryToLoad()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->mDefaultVCodecCapability:Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapVideoDecoderType;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->getVCodecDecoderMaxCapabilityMap(I)Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapCodecType;

    .line 21
    .line 22
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;

    .line 44
    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->mDefaultVCodecCapability:Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 51
    .line 52
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxLumaSamples:I

    .line 53
    .line 54
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxProfile:I

    .line 55
    .line 56
    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxLevel:I

    .line 57
    .line 58
    iget p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecCapability$TPCodecMaxCapability;->maxFramerateFormaxLumaSamples:I

    .line 59
    .line 60
    invoke-direct {p1, v0, v1, v2, p0}, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;-><init>(IIII)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3
    :goto_0
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;->mDefaultVCodecCapability:Lcom/tencent/thumbplayer/tcmedia/api/capability/TPVCodecCapabilityForGet;

    .line 65
    .line 66
    return-object p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public static isACodecCapabilityCanSupport(IIIIII)Z
    .locals 6
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_AUDIO_CODEC_TYPE;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    move v0, p0

    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    move v3, p3

    .line 13
    move v4, p4

    .line 14
    move v5, p5

    .line 15
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isACodecCapabilityCanSupport(IIIIII)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    move-object p0, v0

    .line 22
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public static isDDPlusSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isDDPlusSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static isDDSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isDDSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static isDRMsupport(I)Z
    .locals 0
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_DRM_TYPE;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b/a;->a(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isDolbyDSSupported()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isDolbyDSSupported()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static isDolbyVisionSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static isFeatureSupport(I)Z
    .locals 1
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$InnerFeatureType;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    :try_start_0
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapFeatureType;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isFeatureSupport(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public static isHDRsupport(III)Z
    .locals 1
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_HDR_TYPE;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMap$MapHdrType;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/adapter/strategy/utils/TPNativeKeyMapUtil;->toNativeIntValue(Ljava/lang/Class;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isHDRsupport(III)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static isVCodecCapabilityCanSupport(IIIIII)Z
    .locals 6
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_CODEC_TYPE;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isVCodecCapabilityCanSupport(IIIIII)Z

    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isVCodecCapabilityCanSupport(IIIIIII)Z
    .locals 7
    .param p0    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPCommonEnum$TP_VIDEO_CODEC_TYPE;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    move v0, p1

    move v2, p2

    move v3, p3

    move v6, p6

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->isVCodecCapabilitySupport(IIIIIII)Z

    move-result p0
    :try_end_0
    .catch Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;

    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPNativeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setMediaCodecPreferredSoftwareComponent(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMgr;->isThumbPlayerEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPThumbplayerCapabilityHelper;->setMediaCodecPreferredSoftwareComponent(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
