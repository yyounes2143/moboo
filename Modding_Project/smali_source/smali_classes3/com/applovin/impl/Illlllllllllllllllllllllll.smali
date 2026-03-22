.class public final synthetic Lcom/applovin/impl/Illlllllllllllllllllllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAd;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAdRevenueListener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public synthetic constructor <init>(ZLcom/applovin/mediation/MaxAdRevenueListener;Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/applovin/impl/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAdRevenueListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAdRevenueListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAd;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/l2;->Wwwwwwwwwwww(ZLcom/applovin/mediation/MaxAdRevenueListener;Lcom/applovin/mediation/MaxAd;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
