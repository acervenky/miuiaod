.class Landroid/support/v7/graphics/drawable/DrawableContainer$1;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/graphics/drawable/DrawableContainer;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/drawable/DrawableContainer;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$1;->this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$1;->this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawableContainer;->animate(Z)V

    iget-object p0, p0, Landroid/support/v7/graphics/drawable/DrawableContainer$1;->this$0:Landroid/support/v7/graphics/drawable/DrawableContainer;

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawableContainer;->invalidateSelf()V

    return-void
.end method
