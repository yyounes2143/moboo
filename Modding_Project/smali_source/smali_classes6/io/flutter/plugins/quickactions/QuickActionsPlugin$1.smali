.class Lio/flutter/plugins/quickactions/QuickActionsPlugin$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugins/quickactions/Messages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/quickactions/QuickActionsPlugin;->onNewIntent(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/quickactions/QuickActionsPlugin;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/quickactions/QuickActionsPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/quickactions/QuickActionsPlugin$1;->this$0:Lio/flutter/plugins/quickactions/QuickActionsPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public success()V
    .locals 0

    .line 1
    return-void
.end method
