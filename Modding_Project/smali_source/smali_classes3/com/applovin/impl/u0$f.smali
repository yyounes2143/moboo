.class Lcom/applovin/impl/u0$f;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/u0;->c(Lcom/applovin/impl/q0;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/q0;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/applovin/impl/u0;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/u0$f;->c:Lcom/applovin/impl/u0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/u0$f;->a:Lcom/applovin/impl/q0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/applovin/impl/u0$f;->b:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/sdk/AppLovinCmpError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/u0$f;->c:Lcom/applovin/impl/u0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/applovin/impl/u0;->e(Lcom/applovin/impl/u0;)Lcom/applovin/impl/p0$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/applovin/impl/p0$b;->a(Lcom/applovin/sdk/AppLovinCmpError;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/applovin/impl/u0$f;->c:Lcom/applovin/impl/u0;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/applovin/impl/u0$f;->a:Lcom/applovin/impl/q0;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/applovin/impl/u0$f;->b:Landroid/app/Activity;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
