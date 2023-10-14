import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { UsuarioService } from '../usuario.service';

@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.component.html',
  styleUrls: ['./usuario.component.css'],
})
export class UsuarioComponent implements OnInit {
  usuarios: any[] = [];
  usuarioSeleccionado: any | null = null;
  usuarioForm!: FormGroup;
  submitted = false;

  constructor(private usuarioService: UsuarioService, private formBuilder: FormBuilder) {}

  ngOnInit(): void {
    this.cargarUsuarios();

    this.usuarioForm = this.formBuilder.group({
      nombre: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]]
    });
  }

  get formControls() {
    return this.usuarioForm.controls;
  }

  cargarUsuarios(): void {
    this.usuarioService.getUsuarios().subscribe(usuarios => { 
      this.usuarios = usuarios;
    });
  }

  crearUsuario(): void {
    console.log('Método crearUsuario() ejecutado');
    this.submitted = true;
    if (this.usuarioForm.invalid) {
      return;
    }

    const nuevoUsuario = {
      nombre: this.formControls['nombre'].value,
      email: this.formControls['email'].value
    };

    this.usuarioService.crearUsuario(nuevoUsuario).subscribe(() => {
      this.cargarUsuarios();
      this.usuarioForm.reset();
      this.submitted = false;
    });
  }

  eliminarUsuario(id: number): void {
    if (confirm('¿Estás seguro de eliminar este usuario?')) {
      this.usuarioService.eliminarUsuario(id).subscribe(() => {
        this.cargarUsuarios();
      });
    }
  }

  guardarCambios(): void {
    this.submitted = true;
    if (this.usuarioForm.invalid) {
      return;
    }
  
    const nombreActualizado = this.formControls['nombre'].value;
    const emailActualizado = this.formControls['email'].value;
  
    const usuarioActualizado = {
      ...this.usuarioSeleccionado, // Mantenemos el resto de las propiedades del usuario
      nombre: nombreActualizado,
      email: emailActualizado
    };
  
    this.usuarioService.actualizarUsuario(this.usuarioSeleccionado.id, usuarioActualizado).subscribe(() => {
      this.usuarioSeleccionado = null;
      this.cargarUsuarios();
      this.usuarioForm.reset();
      this.submitted = false;
    });
  }

  actualizarUsuario(id: number): void {
    const usuario = this.usuarios.find(u => u.id === id);
  
    if (usuario) {
      this.usuarioSeleccionado = { ...usuario }; // Crear una copia del usuario seleccionado
    }
  }
  

}
