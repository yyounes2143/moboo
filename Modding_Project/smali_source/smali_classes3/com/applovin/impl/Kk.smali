.class public final synthetic Lcom/applovin/impl/Kk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/k2;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/k2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/Kk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/k2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/Kk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/k2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/k2;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
