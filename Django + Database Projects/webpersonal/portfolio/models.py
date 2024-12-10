from django.db import models

# Create your models here.
class Project(models.Model):
    title = models.CharField(max_length=200, verbose_name = 'Título')
    description = models.TextField(null=True, blank=True, verbose_name = 'Descripción')
    image = models.ImageField(verbose_name = 'Imagen', upload_to='projects')
    created = models.DateTimeField(auto_now_add = True, verbose_name = 'Fecha de Creación') #se ejecuta una vez al crearse la instancia
    updated = models.DateTimeField(auto_now = True, verbose_name = 'Fecha de Edición') # se ejecuta en cada actualización
    link = models.URLField(null=True, blank=True, verbose_name='Dirección Web')

    class Meta:
        verbose_name = 'proyecto'
        verbose_name_plural = 'proyectos'
        ordering = ['-created']

    def __str__(self):
        return self.title