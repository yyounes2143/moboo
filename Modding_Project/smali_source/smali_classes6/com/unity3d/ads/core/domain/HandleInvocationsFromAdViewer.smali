.class public final Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002Jc\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u001c\u0010\u000e\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000fH\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;",
        "Lcom/unity3d/services/core/di/IServiceComponent;",
        "()V",
        "invoke",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/unity3d/ads/adplayer/Invocation;",
        "onInvocations",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "adData",
        "",
        "adDataRefreshToken",
        "impressionConfig",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
        "onSubscription",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lkotlinx/coroutines/flow/SharedFlow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;",
        "Companion",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_DATA:Ljava/lang/String; = "adData"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_DATA_REFRESH_TOKEN:Ljava/lang/String; = "adDataRefreshToken"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_STRING:Ljava/lang/String; = "adString"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_UNIT_ID:Ljava/lang/String; = "adUnitId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DOWNLOAD_PRIORITY:Ljava/lang/String; = "priority"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DOWNLOAD_URL:Ljava/lang/String; = "url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IMPRESSION_CONFIG:Ljava/lang/String; = "impressionConfig"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IS_HEADER_BIDDING:Ljava/lang/String; = "isHeaderBidding"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_LOAD_OPTIONS:Ljava/lang/String; = "loadOptions"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_NATIVE_CONTEXT:Ljava/lang/String; = "nativeContext"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OMID:Ljava/lang/String; = "openMeasurement"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OMJS_SERVICE:Ljava/lang/String; = "serviceFilePath"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OMJS_SESSION:Ljava/lang/String; = "sessionFilePath"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OM_PARTNER:Ljava/lang/String; = "partnerName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OM_PARTNER_VERSION:Ljava/lang/String; = "partnerVersion"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OM_VERSION:Ljava/lang/String; = "version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placementId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PLACEMENT_NAME:Ljava/lang/String; = "placementName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PRIVACY_UPDATE_CONTENT:Ljava/lang/String; = "content"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PRIVACY_UPDATE_VERSION:Ljava/lang/String; = "version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUERY_ID:Ljava/lang/String; = "queryId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_TRACKING_TOKEN:Ljava/lang/String; = "trackingToken"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_VIDEO_LENGTH:Ljava/lang/String; = "videoLength"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/unity3d/services/core/di/IServiceComponent$DefaultImpls;->getServiceProvider(Lcom/unity3d/services/core/di/IServiceComponent;)Lcom/unity3d/services/core/di/IServiceProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/SharedFlow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
    .locals 51
    .param p1    # Lkotlinx/coroutines/flow/SharedFlow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/unity3d/ads/core/data/model/AdData;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static/range {p4 .. p4}, Lcom/unity3d/ads/core/data/model/ImpressionConfig;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-static/range {p3 .. p3}, Lcom/unity3d/ads/core/data/model/AdDataRefreshToken;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$1;

    .line 14
    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    move-object/from16 v5, p5

    .line 18
    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$1;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "com.unity3d.services.ads.api.AdViewer.getAdContext"

    .line 23
    .line 24
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$2;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$2;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "com.unity3d.services.core.api.DeviceInfo.getConnectionType"

    .line 34
    .line 35
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$3;

    .line 40
    .line 41
    invoke-direct {v3, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$3;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "com.unity3d.services.core.api.DeviceInfo.getDeviceVolume"

    .line 45
    .line 46
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v4, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$4;

    .line 51
    .line 52
    invoke-direct {v4, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$4;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 53
    .line 54
    .line 55
    const-string v6, "com.unity3d.services.core.api.DeviceInfo.getDeviceMaxVolume"

    .line 56
    .line 57
    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v6, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$5;

    .line 62
    .line 63
    invoke-direct {v6, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$5;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 64
    .line 65
    .line 66
    const-string v7, "com.unity3d.services.core.api.DeviceInfo.getScreenHeight"

    .line 67
    .line 68
    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    new-instance v7, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$6;

    .line 73
    .line 74
    invoke-direct {v7, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$6;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 75
    .line 76
    .line 77
    const-string v8, "com.unity3d.services.core.api.DeviceInfo.getScreenWidth"

    .line 78
    .line 79
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    new-instance v8, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$7;

    .line 84
    .line 85
    invoke-direct {v8, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$7;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 86
    .line 87
    .line 88
    const-string v9, "com.unity3d.services.ads.api.AdViewer.openUrl"

    .line 89
    .line 90
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    new-instance v9, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$8;

    .line 95
    .line 96
    invoke-direct {v9, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$8;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 97
    .line 98
    .line 99
    const-string v10, "com.unity3d.services.ads.api.AdViewer.setOrientation"

    .line 100
    .line 101
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    new-instance v10, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$9;

    .line 106
    .line 107
    invoke-direct {v10, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$9;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 108
    .line 109
    .line 110
    const-string v11, "com.unity3d.services.ads.api.AdViewer.sendOperativeEvent"

    .line 111
    .line 112
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    const-string v11, "com.unity3d.services.core.api.Storage.write"

    .line 117
    .line 118
    sget-object v12, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$10;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$10;

    .line 119
    .line 120
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    const-string v12, "com.unity3d.services.core.api.Storage.read"

    .line 125
    .line 126
    sget-object v13, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$11;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$11;

    .line 127
    .line 128
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    const-string v13, "com.unity3d.services.core.api.Storage.delete"

    .line 133
    .line 134
    sget-object v14, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$12;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$12;

    .line 135
    .line 136
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    const-string v14, "com.unity3d.services.core.api.Storage.clear"

    .line 141
    .line 142
    sget-object v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$13;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$13;

    .line 143
    .line 144
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    const-string v15, "com.unity3d.services.core.api.Storage.getKeys"

    .line 149
    .line 150
    move-object/from16 p2, v0

    .line 151
    .line 152
    sget-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$14;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$14;

    .line 153
    .line 154
    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v15, "com.unity3d.services.core.api.Storage.get"

    .line 159
    .line 160
    move-object/from16 p3, v0

    .line 161
    .line 162
    sget-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$15;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$15;

    .line 163
    .line 164
    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v15, "com.unity3d.services.core.api.Storage.set"

    .line 169
    .line 170
    move-object/from16 p4, v0

    .line 171
    .line 172
    sget-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$16;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$16;

    .line 173
    .line 174
    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$17;

    .line 179
    .line 180
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$17;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 181
    .line 182
    .line 183
    move-object/from16 v16, v0

    .line 184
    .line 185
    const-string v0, "com.unity3d.services.ads.api.AdViewer.getPrivacyFsm"

    .line 186
    .line 187
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$18;

    .line 192
    .line 193
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$18;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 194
    .line 195
    .line 196
    move-object/from16 v17, v0

    .line 197
    .line 198
    const-string v0, "com.unity3d.services.ads.api.AdViewer.setPrivacyFsm"

    .line 199
    .line 200
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$19;

    .line 205
    .line 206
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$19;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 207
    .line 208
    .line 209
    move-object/from16 v18, v0

    .line 210
    .line 211
    const-string v0, "com.unity3d.services.ads.api.AdViewer.getPrivacyPayload"

    .line 212
    .line 213
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$20;

    .line 218
    .line 219
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$20;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 220
    .line 221
    .line 222
    move-object/from16 v19, v0

    .line 223
    .line 224
    const-string v0, "com.unity3d.services.ads.api.AdViewer.setPrivacyPayload"

    .line 225
    .line 226
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$21;

    .line 231
    .line 232
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$21;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 233
    .line 234
    .line 235
    move-object/from16 v20, v0

    .line 236
    .line 237
    const-string v0, "com.unity3d.services.ads.api.AdViewer.getPrivacyAllowedPii"

    .line 238
    .line 239
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$22;

    .line 244
    .line 245
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$22;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v21, v0

    .line 249
    .line 250
    const-string v0, "com.unity3d.services.ads.api.AdViewer.setPrivacyAllowedPii"

    .line 251
    .line 252
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$23;

    .line 257
    .line 258
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$23;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 259
    .line 260
    .line 261
    move-object/from16 v22, v0

    .line 262
    .line 263
    const-string v0, "com.unity3d.services.ads.api.AdViewer.getSessionToken"

    .line 264
    .line 265
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$24;

    .line 270
    .line 271
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$24;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v23, v0

    .line 275
    .line 276
    const-string v0, "com.unity3d.services.ads.api.AdViewer.markCampaignStateAsShown"

    .line 277
    .line 278
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$25;

    .line 283
    .line 284
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$25;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 285
    .line 286
    .line 287
    move-object/from16 v24, v0

    .line 288
    .line 289
    const-string v0, "com.unity3d.services.ads.api.AdViewer.refreshAdData"

    .line 290
    .line 291
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$26;

    .line 296
    .line 297
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$26;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 298
    .line 299
    .line 300
    move-object/from16 v25, v0

    .line 301
    .line 302
    const-string v0, "com.unity3d.services.ads.api.AdViewer.updateCampaignState"

    .line 303
    .line 304
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$27;

    .line 309
    .line 310
    invoke-direct {v15, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$27;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 311
    .line 312
    .line 313
    move-object/from16 v26, v0

    .line 314
    .line 315
    const-string v0, "com.unity3d.services.ads.api.AdViewer.updateTrackingToken"

    .line 316
    .line 317
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$28;

    .line 322
    .line 323
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$28;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 324
    .line 325
    .line 326
    move-object/from16 v27, v0

    .line 327
    .line 328
    const-string v0, "com.unity3d.services.ads.api.AdViewer.sendPrivacyUpdateRequest"

    .line 329
    .line 330
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$29;

    .line 335
    .line 336
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$29;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 337
    .line 338
    .line 339
    move-object/from16 v28, v0

    .line 340
    .line 341
    const-string v0, "com.unity3d.services.ads.api.AdViewer.sendDiagnosticEvent"

    .line 342
    .line 343
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$30;

    .line 348
    .line 349
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$30;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 350
    .line 351
    .line 352
    move-object/from16 v29, v0

    .line 353
    .line 354
    const-string v0, "com.unity3d.services.ads.api.AdViewer.incrementBannerImpressionCount"

    .line 355
    .line 356
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$31;

    .line 361
    .line 362
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$31;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v30, v0

    .line 366
    .line 367
    const-string v0, "com.unity3d.services.ads.api.AdViewer.download"

    .line 368
    .line 369
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$32;

    .line 374
    .line 375
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$32;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v31, v0

    .line 379
    .line 380
    const-string v0, "com.unity3d.services.ads.api.AdViewer.isFileCached"

    .line 381
    .line 382
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$33;

    .line 387
    .line 388
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$33;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v32, v0

    .line 392
    .line 393
    const-string v0, "com.unity3d.services.ads.api.AdViewer.omidStartSession"

    .line 394
    .line 395
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$34;

    .line 400
    .line 401
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$34;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 402
    .line 403
    .line 404
    move-object/from16 v33, v0

    .line 405
    .line 406
    const-string v0, "com.unity3d.services.ads.api.AdViewer.omidFinishSession"

    .line 407
    .line 408
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$35;

    .line 413
    .line 414
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$35;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 415
    .line 416
    .line 417
    move-object/from16 v34, v0

    .line 418
    .line 419
    const-string v0, "com.unity3d.services.ads.api.AdViewer.omidImpression"

    .line 420
    .line 421
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$36;

    .line 426
    .line 427
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$36;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 428
    .line 429
    .line 430
    move-object/from16 v35, v0

    .line 431
    .line 432
    const-string v0, "com.unity3d.services.ads.api.AdViewer.omidGetData"

    .line 433
    .line 434
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$37;

    .line 439
    .line 440
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$37;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 441
    .line 442
    .line 443
    move-object/from16 v36, v0

    .line 444
    .line 445
    const-string v0, "com.unity3d.services.ads.api.AdViewer.isAttributionAvailable"

    .line 446
    .line 447
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$38;

    .line 452
    .line 453
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$38;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 454
    .line 455
    .line 456
    move-object/from16 v37, v0

    .line 457
    .line 458
    const-string v0, "com.unity3d.services.ads.api.AdViewer.attributionRegisterView"

    .line 459
    .line 460
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$39;

    .line 465
    .line 466
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$39;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 467
    .line 468
    .line 469
    move-object/from16 v38, v0

    .line 470
    .line 471
    const-string v0, "com.unity3d.services.ads.api.AdViewer.attributionRegisterClick"

    .line 472
    .line 473
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$40;

    .line 478
    .line 479
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$40;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v39, v0

    .line 483
    .line 484
    const-string v0, "com.unity3d.services.ads.api.AdViewer.loadScarAd"

    .line 485
    .line 486
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    const-string v15, "com.unity3d.services.ads.api.AdViewer.showScarAd"

    .line 491
    .line 492
    move-object/from16 v40, v0

    .line 493
    .line 494
    sget-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$41;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$41;

    .line 495
    .line 496
    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$42;

    .line 501
    .line 502
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$42;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v41, v0

    .line 506
    .line 507
    const-string v0, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementWins"

    .line 508
    .line 509
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$43;

    .line 514
    .line 515
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$43;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 516
    .line 517
    .line 518
    move-object/from16 v42, v0

    .line 519
    .line 520
    const-string v0, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementStarts"

    .line 521
    .line 522
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;

    .line 527
    .line 528
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 529
    .line 530
    .line 531
    move-object/from16 v43, v0

    .line 532
    .line 533
    const-string v0, "com.unity3d.services.ads.api.AdViewer.hbTokenReset"

    .line 534
    .line 535
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$45;

    .line 540
    .line 541
    invoke-direct {v15, v1, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$45;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 542
    .line 543
    .line 544
    move-object/from16 v44, v0

    .line 545
    .line 546
    const-string v0, "com.unity3d.services.ads.api.AdViewer.loadOfferwallAd"

    .line 547
    .line 548
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    const-string v15, "com.unity3d.services.ads.api.AdViewer.showOfferwallAd"

    .line 553
    .line 554
    move-object/from16 v45, v0

    .line 555
    .line 556
    sget-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$46;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$46;

    .line 557
    .line 558
    invoke-static {v15, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$47;

    .line 563
    .line 564
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$47;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 565
    .line 566
    .line 567
    move-object/from16 v46, v0

    .line 568
    .line 569
    const-string v0, "com.unity3d.services.ads.api.AdViewer.isOfferwallAdReady"

    .line 570
    .line 571
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$48;

    .line 576
    .line 577
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$48;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 578
    .line 579
    .line 580
    move-object/from16 v47, v0

    .line 581
    .line 582
    const-string v0, "com.unity3d.services.core.api.Request.get"

    .line 583
    .line 584
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$49;

    .line 589
    .line 590
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$49;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 591
    .line 592
    .line 593
    move-object/from16 v48, v0

    .line 594
    .line 595
    const-string v0, "com.unity3d.services.core.api.Request.post"

    .line 596
    .line 597
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$50;

    .line 602
    .line 603
    invoke-direct {v15, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$50;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 604
    .line 605
    .line 606
    move-object/from16 v49, v0

    .line 607
    .line 608
    const-string v0, "com.unity3d.services.core.api.Request.head"

    .line 609
    .line 610
    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    new-instance v15, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$51;

    .line 615
    .line 616
    invoke-direct {v15, v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$51;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 617
    .line 618
    .line 619
    const-string v5, "com.unity3d.services.ads.api.AdViewer.setOpportunityTTL"

    .line 620
    .line 621
    invoke-static {v5, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    const/16 v15, 0x33

    .line 626
    .line 627
    new-array v15, v15, [Lkotlin/Pair;

    .line 628
    .line 629
    const/16 v50, 0x0

    .line 630
    .line 631
    aput-object p2, v15, v50

    .line 632
    .line 633
    const/16 v50, 0x1

    .line 634
    .line 635
    aput-object v2, v15, v50

    .line 636
    .line 637
    const/4 v2, 0x2

    .line 638
    aput-object v3, v15, v2

    .line 639
    .line 640
    const/4 v2, 0x3

    .line 641
    aput-object v4, v15, v2

    .line 642
    .line 643
    const/4 v2, 0x4

    .line 644
    aput-object v6, v15, v2

    .line 645
    .line 646
    const/4 v2, 0x5

    .line 647
    aput-object v7, v15, v2

    .line 648
    .line 649
    const/4 v2, 0x6

    .line 650
    aput-object v8, v15, v2

    .line 651
    .line 652
    const/4 v2, 0x7

    .line 653
    aput-object v9, v15, v2

    .line 654
    .line 655
    const/16 v2, 0x8

    .line 656
    .line 657
    aput-object v10, v15, v2

    .line 658
    .line 659
    const/16 v2, 0x9

    .line 660
    .line 661
    aput-object v11, v15, v2

    .line 662
    .line 663
    const/16 v2, 0xa

    .line 664
    .line 665
    aput-object v12, v15, v2

    .line 666
    .line 667
    const/16 v2, 0xb

    .line 668
    .line 669
    aput-object v13, v15, v2

    .line 670
    .line 671
    const/16 v2, 0xc

    .line 672
    .line 673
    aput-object v14, v15, v2

    .line 674
    .line 675
    const/16 v2, 0xd

    .line 676
    .line 677
    aput-object p3, v15, v2

    .line 678
    .line 679
    const/16 v2, 0xe

    .line 680
    .line 681
    aput-object p4, v15, v2

    .line 682
    .line 683
    const/16 v2, 0xf

    .line 684
    .line 685
    aput-object v16, v15, v2

    .line 686
    .line 687
    const/16 v2, 0x10

    .line 688
    .line 689
    aput-object v17, v15, v2

    .line 690
    .line 691
    const/16 v2, 0x11

    .line 692
    .line 693
    aput-object v18, v15, v2

    .line 694
    .line 695
    const/16 v2, 0x12

    .line 696
    .line 697
    aput-object v19, v15, v2

    .line 698
    .line 699
    const/16 v2, 0x13

    .line 700
    .line 701
    aput-object v20, v15, v2

    .line 702
    .line 703
    const/16 v2, 0x14

    .line 704
    .line 705
    aput-object v21, v15, v2

    .line 706
    .line 707
    const/16 v2, 0x15

    .line 708
    .line 709
    aput-object v22, v15, v2

    .line 710
    .line 711
    const/16 v2, 0x16

    .line 712
    .line 713
    aput-object v23, v15, v2

    .line 714
    .line 715
    const/16 v2, 0x17

    .line 716
    .line 717
    aput-object v24, v15, v2

    .line 718
    .line 719
    const/16 v2, 0x18

    .line 720
    .line 721
    aput-object v25, v15, v2

    .line 722
    .line 723
    const/16 v2, 0x19

    .line 724
    .line 725
    aput-object v26, v15, v2

    .line 726
    .line 727
    const/16 v2, 0x1a

    .line 728
    .line 729
    aput-object v27, v15, v2

    .line 730
    .line 731
    const/16 v2, 0x1b

    .line 732
    .line 733
    aput-object v28, v15, v2

    .line 734
    .line 735
    const/16 v2, 0x1c

    .line 736
    .line 737
    aput-object v29, v15, v2

    .line 738
    .line 739
    const/16 v2, 0x1d

    .line 740
    .line 741
    aput-object v30, v15, v2

    .line 742
    .line 743
    const/16 v2, 0x1e

    .line 744
    .line 745
    aput-object v31, v15, v2

    .line 746
    .line 747
    const/16 v2, 0x1f

    .line 748
    .line 749
    aput-object v32, v15, v2

    .line 750
    .line 751
    const/16 v2, 0x20

    .line 752
    .line 753
    aput-object v33, v15, v2

    .line 754
    .line 755
    const/16 v2, 0x21

    .line 756
    .line 757
    aput-object v34, v15, v2

    .line 758
    .line 759
    const/16 v2, 0x22

    .line 760
    .line 761
    aput-object v35, v15, v2

    .line 762
    .line 763
    const/16 v2, 0x23

    .line 764
    .line 765
    aput-object v36, v15, v2

    .line 766
    .line 767
    const/16 v2, 0x24

    .line 768
    .line 769
    aput-object v37, v15, v2

    .line 770
    .line 771
    const/16 v2, 0x25

    .line 772
    .line 773
    aput-object v38, v15, v2

    .line 774
    .line 775
    const/16 v2, 0x26

    .line 776
    .line 777
    aput-object v39, v15, v2

    .line 778
    .line 779
    const/16 v2, 0x27

    .line 780
    .line 781
    aput-object v40, v15, v2

    .line 782
    .line 783
    const/16 v2, 0x28

    .line 784
    .line 785
    aput-object v41, v15, v2

    .line 786
    .line 787
    const/16 v2, 0x29

    .line 788
    .line 789
    aput-object v42, v15, v2

    .line 790
    .line 791
    const/16 v2, 0x2a

    .line 792
    .line 793
    aput-object v43, v15, v2

    .line 794
    .line 795
    const/16 v2, 0x2b

    .line 796
    .line 797
    aput-object v44, v15, v2

    .line 798
    .line 799
    const/16 v2, 0x2c

    .line 800
    .line 801
    aput-object v45, v15, v2

    .line 802
    .line 803
    const/16 v2, 0x2d

    .line 804
    .line 805
    aput-object v46, v15, v2

    .line 806
    .line 807
    const/16 v2, 0x2e

    .line 808
    .line 809
    aput-object v47, v15, v2

    .line 810
    .line 811
    const/16 v2, 0x2f

    .line 812
    .line 813
    aput-object v48, v15, v2

    .line 814
    .line 815
    const/16 v2, 0x30

    .line 816
    .line 817
    aput-object v49, v15, v2

    .line 818
    .line 819
    const/16 v2, 0x31

    .line 820
    .line 821
    aput-object v0, v15, v2

    .line 822
    .line 823
    const/16 v0, 0x32

    .line 824
    .line 825
    aput-object v5, v15, v0

    .line 826
    .line 827
    invoke-static {v15}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    new-instance v2, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$1;

    .line 832
    .line 833
    const/4 v3, 0x0

    .line 834
    move-object/from16 v4, p6

    .line 835
    .line 836
    invoke-direct {v2, v4, v3}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 837
    .line 838
    .line 839
    move-object/from16 v4, p1

    .line 840
    .line 841
    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->onSubscription(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/SharedFlow;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    new-instance v4, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$2;

    .line 846
    .line 847
    invoke-direct {v4, v0, v3}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$2;-><init>(Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    .line 848
    .line 849
    .line 850
    invoke-static {v2, v4}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    return-object v0
.end method
