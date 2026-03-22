.class Lcom/applovin/impl/c3$b$h;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/c3$b;->a(Lcom/applovin/impl/d2;Lcom/applovin/impl/j2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/j2;

.field final synthetic b:Lcom/applovin/impl/c3$b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/c3$b;Lcom/applovin/impl/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/c3$b$h;->b:Lcom/applovin/impl/c3$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/c3$b$h;->a:Lcom/applovin/impl/j2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerDetailActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/c3$b$h;->a(Lcom/applovin/mediation/MaxDebuggerDetailActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerDetailActivity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/c3$b$h;->a:Lcom/applovin/impl/j2;

    check-cast v0, Lcom/applovin/impl/o3;

    invoke-virtual {v0}, Lcom/applovin/impl/o3;->r()Lcom/applovin/impl/v2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/w2;->initialize(Lcom/applovin/impl/v2;)V

    return-void
.end method
