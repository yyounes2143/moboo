.class Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

.field final synthetic val$finalIconImage:Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->val$finalIconImage:Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->access$1000(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/nativex/view/MBMediaView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setNativeAd(Lcom/mbridge/msdk/out/Campaign;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setOnMediaViewListener(Lcom/mbridge/msdk/out/OnMBMediaViewListener;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->access$1000(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Lcom/mbridge/msdk/widget/MBAdChoice;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/widget/MBAdChoice;->setCampaign(Lcom/mbridge/msdk/out/Campaign;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 49
    .line 50
    invoke-direct {v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->access$1200(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;)Lcom/applovin/mediation/MaxAdFormat;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdFormat(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 78
    .line 79
    iget-object v3, v3, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->val$finalIconImage:Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setIcon(Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setOptionsView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMediaView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 120
    .line 121
    new-instance v2, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;

    .line 122
    .line 123
    invoke-direct {v2, v1, v0}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;-><init>(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$1302(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;)Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->access$1100(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;)Landroid/os/Bundle;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "template"

    .line 138
    .line 139
    const-string v2, ""

    .line 140
    .line 141
    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 150
    .line 151
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$1300(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;)Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v3, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 156
    .line 157
    iget-object v3, v3, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 158
    .line 159
    invoke-static {v3}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->access$1000(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;)Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v1, v2, v0, v3}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$1400(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/content/Context;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 168
    .line 169
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 170
    .line 171
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$1300(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;)Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 178
    .line 179
    iget-object v2, v2, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 180
    .line 181
    iget-object v2, v2, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 182
    .line 183
    invoke-static {v2, v0}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$1500(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->prepareForInteraction(Ljava/util/List;Landroid/view/ViewGroup;)Z

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1$1;->this$2:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;->access$1600(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdViewListener;)Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoaded(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    return-void
.end method
