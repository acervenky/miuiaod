.class Lcom/miui/aod/components/view/VerticalTextView$1;
.super Ljava/lang/Object;
.source "VerticalTextView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/view/VerticalTextView;->initDrawMask(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/view/VerticalTextView;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/VerticalTextView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/VerticalTextView$1;->this$0:Lcom/miui/aod/components/view/VerticalTextView;

    iput-object p2, p0, Lcom/miui/aod/components/view/VerticalTextView$1;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/components/view/VerticalTextView$1;->this$0:Lcom/miui/aod/components/view/VerticalTextView;

    iget-object p0, p0, Lcom/miui/aod/components/view/VerticalTextView$1;->val$rect:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Lcom/miui/aod/components/view/VerticalTextView;->access$000(Lcom/miui/aod/components/view/VerticalTextView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-void
.end method
