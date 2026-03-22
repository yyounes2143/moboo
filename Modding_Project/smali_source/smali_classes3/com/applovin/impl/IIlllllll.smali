.class public final synthetic Lcom/applovin/impl/IIlllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAdRequestListener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public synthetic constructor <init>(ZLcom/applovin/mediation/MaxAdRequestListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/applovin/impl/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAdRequestListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/mediation/MaxAdRequestListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/impl/IIlllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/l2;->Wwwww(ZLcom/applovin/mediation/MaxAdRequestListener;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
