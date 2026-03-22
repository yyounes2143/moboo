.class public final synthetic Lcom/applovin/impl/IIlllllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdView;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAd;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdViewEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdViewEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAd;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdView;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdViewEventListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/sdk/AppLovinAd;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdView;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/impl/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/l2;->Wwwwwwwwwwwwwwwwwwwww(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
