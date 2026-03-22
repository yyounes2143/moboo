.class public interface abstract Lio/flutter/plugins/quickactions/Messages$AndroidQuickActionsApi;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/quickactions/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AndroidQuickActionsApi"
.end annotation


# virtual methods
.method public abstract clearShortcutItems()V
.end method

.method public abstract getLaunchAction()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract setShortcutItems(Ljava/util/List;Lio/flutter/plugins/quickactions/Messages$VoidResult;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/quickactions/Messages$VoidResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;",
            ">;",
            "Lio/flutter/plugins/quickactions/Messages$VoidResult;",
            ")V"
        }
    .end annotation
.end method
