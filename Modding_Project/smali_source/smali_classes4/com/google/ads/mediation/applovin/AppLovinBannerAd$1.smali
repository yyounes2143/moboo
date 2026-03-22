.class Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/ads/mediation/applovin/AppLovinInitializer$OnInitializeSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

.field final synthetic val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

.field final synthetic val$serverParameters:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Landroid/os/Bundle;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$serverParameters:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onInitializeSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$200(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinInitializer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$100(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/ads/mediation/applovin/AppLovinInitializer;->retrieveSdk(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$002(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinSdk;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$serverParameters:Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/applovin/mediation/AppLovinUtils;->retrieveZoneId(Landroid/os/Bundle;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$302(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$400()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 35
    .line 36
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$300(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$600(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdFactory;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$000(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/applovin/sdk/AppLovinSdk;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 59
    .line 60
    invoke-static {v4}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$100(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/ads/mediation/applovin/AppLovinAdFactory;->createAdView(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$502(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$500(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$500(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$500(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$300(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    .line 116
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$000(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/applovin/sdk/AppLovinSdk;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$300(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 133
    .line 134
    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$000(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/applovin/sdk/AppLovinSdk;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 151
    .line 152
    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
