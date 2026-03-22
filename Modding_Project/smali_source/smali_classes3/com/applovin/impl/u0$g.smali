.class Lcom/applovin/impl/u0$g;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/privacy/cmp/CmpServiceImpl$f;


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
    iput-object p1, p0, Lcom/applovin/impl/u0$g;->c:Lcom/applovin/impl/u0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/u0$g;->a:Lcom/applovin/impl/q0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/applovin/impl/u0$g;->b:Landroid/app/Activity;

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
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/applovin/impl/u0$g;->c:Lcom/applovin/impl/u0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/applovin/impl/u0;->e(Lcom/applovin/impl/u0;)Lcom/applovin/impl/p0$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/applovin/impl/p0$b;->a(Lcom/applovin/sdk/AppLovinCmpError;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/u0$g;->c:Lcom/applovin/impl/u0;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/applovin/impl/u0;->e(Lcom/applovin/impl/u0;)Lcom/applovin/impl/p0$b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/applovin/impl/p0$b;->c()V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/u0$g;->c:Lcom/applovin/impl/u0;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/applovin/impl/u0$g;->a:Lcom/applovin/impl/q0;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/applovin/impl/u0$g;->b:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/u0;->a(Lcom/applovin/impl/u0;Lcom/applovin/impl/q0;Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
