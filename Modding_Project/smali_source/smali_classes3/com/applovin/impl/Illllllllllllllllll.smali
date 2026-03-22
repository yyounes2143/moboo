.class public final synthetic Lcom/applovin/impl/Illllllllllllllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:D

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAd;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAd;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:D

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAd;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:D

    .line 6
    .line 7
    iget-boolean v4, p0, Lcom/applovin/impl/Illllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/applovin/impl/l2;->Wwwwwwwwwwwwwwww(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
