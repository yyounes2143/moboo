.class public final Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private icon:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private localizedTitle:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;->type:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;->setType(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;->localizedTitle:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;->setLocalizedTitle(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;->icon:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage;->setIcon(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/quickactions/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocalizedTitle(Ljava/lang/String;)Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/quickactions/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;->localizedTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/quickactions/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/quickactions/Messages$ShortcutItemMessage$Builder;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
