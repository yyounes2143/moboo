.class public final synthetic Lcom/applovin/impl/O00000;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/O00000;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences$Editor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/O00000;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
